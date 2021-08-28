import 'package:flutter/material.dart';
import 'package:treehousesble/common/route/routes.dart';
import 'package:treehousesble/feature/home/screen/dashboard_screen.dart';
import 'package:treehousesble/feature/onboard/ui/screen/onboard_page.dart';
import 'package:treehousesble/feature/onboard/ui/screen/splash_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.root:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardPage());
      case Routes.dashboard:
        return MaterialPageRoute(builder: (_) => FindDevicesScreen());
      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
