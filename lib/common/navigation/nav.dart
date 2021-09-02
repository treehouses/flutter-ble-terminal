import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Nav {
  static GlobalKey<NavigatorState> _navKey = GlobalKey<NavigatorState>();

  static get navKey => _navKey;

  static BuildContext? _context = _navKey.currentContext;

  static get context => _context;

  static void pushNamed(String route) {
    Navigator.of(_context!).pushNamed(route);
  }

  static void pushReplacementNamed(String route) {
    Navigator.of(_context!).pushNamed(route);
  }

  static void pop() {
    Navigator.of(_context!).pop();
  }

  //Navigate Push

  static Future<dynamic> push(
      {String routeName = '', required Widget target, Object? args}) {
    return _navKey.currentState!.push(
      MaterialPageRoute(
        builder: (context) => target,
        settings: RouteSettings(name: routeName, arguments: args),
      ),
    );
  }

  //Navigate Push Replacement

  static Future<dynamic> pushReplacement(
      {String routeName = '', required Widget target, Object? args}) {
    return _navKey.currentState!.pushReplacement(
      MaterialPageRoute(
        builder: (context) => target,
        settings: RouteSettings(name: routeName, arguments: args),
      ),
    );
  }

  //Navigate Push Until

  static Future<dynamic> pushUntil(
      {String routeName = '', required Widget target, Object? args}) {
    return _navKey.currentState!.pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => target,
        settings: RouteSettings(name: routeName, arguments: args),
      ),
      (Route<dynamic> route) => false,
    );
  }



}
