import 'dart:async';

import 'package:flutter/material.dart';
import 'package:treehousesble/app/app.dart';
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
