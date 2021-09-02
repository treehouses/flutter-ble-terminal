import 'dart:async';

import 'package:flutter/material.dart';
import 'package:treehousesble/common/route/routes.dart';
import 'package:treehousesble/feature/onboard/ui/widget/splash_widget.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Routes.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashWidget();
  }
}
