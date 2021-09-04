import 'dart:async';
import 'dart:math';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:treehousesble/app/app.dart';
import 'package:treehousesble/app/theme.dart';
import 'package:treehousesble/common/constants/env.dart';

import 'common/utils/log.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // runApp(FlutterBlueApp());
  runZonedGuarded(() {
    runApp(
      App(
        env: EnvValue.production,
      ),
    );
  }, (e, s) {
    Log.e(e);
    Log.d(s);
  });
}
