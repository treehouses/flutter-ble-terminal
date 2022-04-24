import 'package:equatable/equatable.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BluetoothDisconnect extends DataState {
  final String? errormsg;

  const BluetoothDisconnect({this.errormsg});

  @override
  List<Object> get props => [];
}

class DataState extends Equatable {
  final dynamic data;

  const DataState({this.data});

  @override
  List<Object?> get props => [...data];
}

class FirstTimeAppOpen extends DataState {
  @override
  List<Object> get props => [];
}

class NotFirstTimeAppOpen extends DataState {
  @override
  List<Object> get props => [];
}

class PermissionsNotGranted extends DataState {
  @override
  List<Object> get props => [];
}

class StateIniital extends DataState {}

class StateLoading extends DataState {}
class StateReading extends DataState {}

class StateError extends DataState {
  final String message;

  const StateError({required this.message});

  @override
  List<Object?> get props => [message];
}

class StateNoData extends DataState {
  final String message;

  const StateNoData({required this.message});

  List<Object?> get props => [message];
}

class StateReadSuccess extends DataState {
  final dynamic data;

  const StateReadSuccess({required this.data}) : super(data: data);

  @override
  List<Object?> get props => [...data];
}

class StateFoundDevices extends DataState {
  final List<BluetoothDevice> list;

  const StateFoundDevices({required this.list}) : super(data: list);

  @override
  List<Object?> get props => [...data];
}


class StateDeviceConnected extends DataState {
  final BluetoothCharacteristic characteristic;

  const StateDeviceConnected({required this.characteristic});

  List<Object?> get props => [];
}

class StateDeviceNotConnected extends DataState {

  const StateDeviceNotConnected();

  List<Object?> get props => [];
}