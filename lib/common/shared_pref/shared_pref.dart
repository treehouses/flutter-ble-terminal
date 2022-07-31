import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const THEME_MODE = "ThemeMode";
  static const FirstTimeAppOpen = 'FirstTimeAppOpen';

  static Future clearAll() async {
    final _instance = await SharedPreferences.getInstance();
    await _instance.clear();
  }

  static Future getThemeFromSharedPref() async {
    final _instance = await SharedPreferences.getInstance();

    return _instance.getString(THEME_MODE) ?? "system";
  }

  static setThemeInSharedPref(String themeMode) async {
    final _instance = await SharedPreferences.getInstance();
    await _instance.setString(THEME_MODE, themeMode);
  }


  static Future setFirstTimeAppOpen(bool status) async {
    final _instance = await SharedPreferences.getInstance();
    await _instance.setBool(FirstTimeAppOpen, status);
  }

  static Future<bool> getFirstTimeAppOpen() async {
    final _instance = await SharedPreferences.getInstance();
    final res = _instance.getBool(FirstTimeAppOpen);
    if (res == null) return true;
    return res;
  }

}
