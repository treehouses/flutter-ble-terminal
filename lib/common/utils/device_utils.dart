import 'package:flutter/services.dart';
import 'package:package_info/package_info.dart';

class DeviceUtils {
  static final DeviceUtils _deviceUtils = DeviceUtils._internal();

  factory DeviceUtils() {
    return _deviceUtils;
  }

  DeviceUtils._internal();

  static Future<String> get getAppVersion async {
    PackageInfo _packageInfo = await PackageInfo.fromPlatform();
    return _packageInfo.version;
  }

  static Future<String> get getAppName async {
    PackageInfo _packageInfo = await PackageInfo.fromPlatform();
    return _packageInfo.appName;
  }

  static Future<String> get getPackageName async {
    PackageInfo _packageInfo = await PackageInfo.fromPlatform();
    return _packageInfo.packageName;
  }

  static void setStatusBarTextColor({required bool isDarkMode}) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: isDarkMode ? Brightness.light : Brightness.dark,
      statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
      systemNavigationBarIconBrightness:
          isDarkMode ? Brightness.light : Brightness.dark,
    ));
  }
}
