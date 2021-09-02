import 'package:flutter/material.dart';

class UiUtils {
  static bool isDarkTheme(ThemeData theme) {
    final _scaColor = theme.scaffoldBackgroundColor;
    final _isDark = _scaColor != Colors.white;
    return _isDark;
  }
}
