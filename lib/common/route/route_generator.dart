import 'package:flutter/material.dart';
import 'package:treehousesble/common/route/routes.dart';
import 'package:treehousesble/ui/home/screen/dashboard_screen.dart';
import 'package:treehousesble/ui/home/screen/device_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.root:
        return MaterialPageRoute(builder: (_) => FindDevicesScreen());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => FindDevicesScreen());
      case Routes.landing:
        return MaterialPageRoute(builder: (_) => FindDevicesScreen());


      default:
        return MaterialPageRoute(builder: (_) => FindDevicesScreen());
    }
  }
}
