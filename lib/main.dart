
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/ui/home/screen/bluetooth_off_screen.dart';
import 'package:treehousesble/ui/home/screen/device_screen.dart';
import 'package:treehousesble/ui/home/screen/dashboard_screen.dart';
import 'package:treehousesble/ui/home/widget/adapter_state.dart';
import 'package:treehousesble/ui/home/widget/characteristic_tile.dart';
import 'package:treehousesble/ui/home/widget/descriptor_tile.dart';
import 'package:treehousesble/ui/home/widget/scan_result_tile.dart';
import 'package:treehousesble/ui/home/widget/service_tile.dart';

void main() {
  runApp(FlutterBlueApp());
}

class FlutterBlueApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.lightBlue,
      home: StreamBuilder<BluetoothState>(
          stream: FlutterBlue.instance.state,
          initialData: BluetoothState.unknown,
          builder: (c, snapshot) {
            final state = snapshot.data;
            if (state == BluetoothState.on) {
              return FindDevicesScreen();
            }
            return BluetoothOffScreen(state: state);
          }),
    );
  }
}

