import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:treehousesble/common/navigation/nav.dart';
import 'package:treehousesble/common/shared_pref/shared_pref.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial(themeMode: ThemeMode.light));
  ThemeMode _themeMode = ThemeMode.light;

  getUsersPreferredTheme() async {
    var theme = await SharedPref.getThemeFromSharedPref();
    if (theme == null || theme == "system") {
      _themeMode = ThemeMode.system;
      emit(ThemeInitial(themeMode: _themeMode));
    } else if (theme == "dark") {
      _themeMode = ThemeMode.dark;
      emit(ThemeChanged(themeMode: ThemeMode.dark));
    } else if (theme == "light") {
      _themeMode = ThemeMode.light;
      emit(ThemeChanged(themeMode: ThemeMode.light));
    }
  }

  setTheme(ThemeMode theme) async {
    _themeMode = theme;

    SharedPref.setThemeInSharedPref(theme.toString().split(".").last);
    emit(ThemeChanged(themeMode: theme));
  }

  toggleTheme() async {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    }

    ///
    else if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
    }

    ///
    else if (_themeMode == ThemeMode.system) {
      var brightness = MediaQuery.of(Nav.context).platformBrightness;

      if (brightness == Brightness.light) {
        _themeMode = ThemeMode.dark;
      } else {
        _themeMode = ThemeMode.light;
      }
    }

    emit(ThemeChanged(themeMode: _themeMode));
  }
}
