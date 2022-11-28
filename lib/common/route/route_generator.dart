import 'package:flutter/material.dart';
import 'package:treehousesble/common/route/routes.dart';
import 'package:treehousesble/feature/dashboard/screen/dashboard_page.dart';
import 'package:treehousesble/feature/dashboard/screen/search_rpi_screen.dart';
import 'package:treehousesble/feature/onboard/ui/screen/landing_page.dart';
import 'package:treehousesble/feature/onboard/ui/screen/onboard_page.dart';
import 'package:treehousesble/feature/onboard/ui/screen/splash_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.root:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardPage());
      case Routes.landing:
        return MaterialPageRoute(builder: (_) => LandingPage());
      case Routes.dashboard:
        return MaterialPageRoute(builder: (_) => DashboardPage());
        case Routes.search:
        return MaterialPageRoute(builder: (_) => SearchRpiScreen());
      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
