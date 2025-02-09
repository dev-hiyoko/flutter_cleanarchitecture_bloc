import 'package:flutter/material.dart';

class ThemeDataSource {
  ThemeMode _theme = ThemeMode.system;

  ThemeMode getTheme() {
    return _theme;
  }

  void saveTheme(ThemeMode value) {
    _theme = value;
  }
}
