import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:permission_handler/permission_handler.dart';
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
    if(await Permission.location.request() == PermissionStatus.granted
        && await Permission.bluetooth.request() == PermissionStatus.granted){
      if (firstTimeAppOpen) {
        emit(FirstTimeAppOpen());
      } else {
        emit(NotFirstTimeAppOpen());
      }
    } else{
      emit(PermissionsNotGranted());
    }
  }
  List<int> _sendCommand(String command) {
    return utf8.encode(command);
  }

  writeMessage(String command) async{
    if(characteristic != null){
      await characteristic?.write(_sendCommand(command), withoutResponse: true);
      print("SEND MESSAGE " + command);
      readMessage();
    }
  }

  readMessage() async{
    if(characteristic != null){
      emit(StateReading());
      List<int> response =  await characteristic!.read();
      var responseString = utf8.decode(response);
      emit(StateReadSuccess(data: responseString));
    }

  }

  fetchDeviceList(bool filterPi) {
    emit(StateLoading());
    print("FETCH DEVICE LIST");
    flutterBlue.connectedDevices
        .asStream()
        .listen((List<BluetoothDevice> devices) {
      for (BluetoothDevice device in devices) {
        _addDeviceTolist(device, filterPi);
      }
    });
    flutterBlue.scanResults.listen((List<ScanResult> results) {
      print("Scan result " + results.length.toString());
      for (ScanResult result in results) {
        _addDeviceTolist(result.device, filterPi);
      }
    });
    flutterBlue.startScan();
  }

  void _addDeviceTolist(BluetoothDevice device, bool filterPi) {
    print("Filter pi " + device.name);
    if (!devicesList.contains(device) && checkIfPi(device, filterPi)) {
      devicesList.add(device);
    }
    emit(StateIniital());
    emit(StateFoundDevices(list: devicesList));
    // if (devicesList.length > 0) );
  }

  fetchServicesAndConnect(BluetoothDevice device) async {
    emit(StateLoading());
    try {
      await device.connect(timeout: Duration(seconds: 20));
      discoverServices(device);
    } catch (e) {
      if(e.toString().contains("already")){
        discoverServices(device);
      }else{
        emit(StateError(message: "Unable to connect please try again"));
      }
    }
  }

  checkDeviceConnected() async {
    if (characteristic == null) {
      emit(StateDeviceNotConnected());
      var connected = await flutterBlue.connectedDevices;
      if (connected.length > 0) fetchServicesAndConnect(connected[0]);
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

  void discoverServices(BluetoothDevice device)async{
    List<BluetoothService> services = await device.discoverServices();
    for (BluetoothService service in services) {
      if (service.uuid.toString() == Strings.BLUETOOTH_UUID) {
        List<BluetoothCharacteristic> characteristics =
            service.characteristics;
        if (characteristics.length > 0) {
          characteristic = characteristics[0];
          emit(StateDeviceConnected(characteristic: characteristic!));
          print("CONNECTED TO DEVICE");
          break;
        }
      }
    }
  }
}
