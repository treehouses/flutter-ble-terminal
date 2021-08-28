import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

import 'bluetooth_off_screen.dart';
import 'dashboard_screen.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BluetoothState>(
        stream: FlutterBlue.instance.state,
        initialData: BluetoothState.unknown,
        builder: (c, snapshot) {
          final state = snapshot.data;
          if (state == BluetoothState.on) {
            return FindDevicesScreen();
          }
          return BluetoothOffScreen(state: state);
        });
  }
}
