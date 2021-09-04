import 'package:bloc/bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/app/app.dart';
import 'package:treehousesble/common/bloc/bluetooth_state.dart';
import 'package:treehousesble/common/constants/app_constants.dart';
import 'package:treehousesble/common/constants/constant.dart';
import 'package:treehousesble/common/constants/strings.dart';
import 'package:treehousesble/common/shared_pref/shared_pref.dart';

class BluetoothCubit extends Cubit<DataState> {
  BluetoothCubit() : super(StateDeviceNotConnected());
  final FlutterBlue flutterBlue = FlutterBlue.instance;
  final List<BluetoothDevice> devicesList = [];
  final Map<Guid, List<int>> readValues = new Map<Guid, List<int>>();
  BluetoothCharacteristic? characteristic;

  appStart() async {
    final bool firstTimeAppOpen = await SharedPref.getFirstTimeAppOpen();
    if (firstTimeAppOpen) {
      emit(FirstTimeAppOpen());
    } else {
      emit(NotFirstTimeAppOpen());
    }
  }

  fetchDeviceList(bool filterPi) {
    emit(StateLoading());
    flutterBlue.connectedDevices
        .asStream()
        .listen((List<BluetoothDevice> devices) {
      for (BluetoothDevice device in devices) {
        _addDeviceTolist(device, filterPi);
      }
    });
    flutterBlue.scanResults.listen((List<ScanResult> results) {
      for (ScanResult result in results) {
        _addDeviceTolist(result.device, filterPi);
      }
    });
    flutterBlue.startScan();
  }

  void _addDeviceTolist(BluetoothDevice device, bool filterPi) {
    if (!devicesList.contains(device) && checkIfPi(device, filterPi)) {
      devicesList.add(device);
    }
    emit(StateFoundDevices(list: devicesList));
  }

  fetchServicesAndConnect(BluetoothDevice device) async {
    List<BluetoothService> services = await device.discoverServices();
    for (BluetoothService service in services) {
      if (service.uuid.toString() == Strings.BLUETOOTH_UUID) {
        List<BluetoothCharacteristic> characteristics = service.characteristics;
        if (characteristics.length > 0) {
          characteristic = characteristics[0];
          emit(StateDeviceConnected(characteristic: characteristic!));
          break;
        }
      }
    }
  }

  checkDeviceConnected() {
    if (characteristic == null) {
      emit(StateDeviceNotConnected());
    } else {
      emit(StateDeviceConnected(characteristic: characteristic!));
    }
  }

  bool checkIfPi(BluetoothDevice device, bool filterPi) {
    if (filterPi) {
      bool isPi = false;
      for (int i = 0; i < AppConstants.PI_ADDRESS.length; i++) {
        if (device.id
            .toString()
            .toLowerCase()
            .startsWith(AppConstants.PI_ADDRESS[i].toLowerCase())) {
          isPi = true;
          break;
        }
      }
      return isPi;
    }
    return true;
  }
}
