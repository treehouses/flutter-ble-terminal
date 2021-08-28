
import 'dart:async';
import 'dart:math';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/app/app.dart';
import 'package:treehousesble/app/theme.dart';
import 'package:treehousesble/feature/home/screen/bluetooth_off_screen.dart';
import 'package:treehousesble/feature/home/screen/device_screen.dart';
import 'package:treehousesble/feature/home/screen/dashboard_screen.dart';

import 'common/utils/log.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // runApp(FlutterBlueApp());
  runZonedGuarded(() {
    runApp(
      DevicePreview(child: App(),),
    );
  }, (e, s) {
    Log.e(e);
    Log.d(s);
  });
}
//
// class FlutterBlueApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: CustomTheme.lightTheme(),
//       darkTheme: CustomTheme.darkTheme(),
//       themeMode: ThemeMode.light,
//       home: StreamBuilder<BluetoothState>(
//           stream: FlutterBlue.instance.state,
//           initialData: BluetoothState.unknown,
//           builder: (c, snapshot) {
//             final state = snapshot.data;
//             if (state == BluetoothState.on) {
//               return FindDevicesScreen();
//             }
//             return BluetoothOffScreen(state: state);
//           }),
//     );
//   }
// }
//
