import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeDataSource {
  static const String themeModeKey = 'theme_mode';

  Future<ThemeMode> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final loadedMode = prefs.getString(themeModeKey).toString().split('.').last;
    ThemeMode theme;
    if (loadedMode == "light") {
      theme = ThemeMode.light;
    } else if (loadedMode == "dark") {
      theme = ThemeMode.dark;
    } else {
      theme = ThemeMode.system;
    }
    return theme;
  }

  Future<void> saveTheme(ThemeMode value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(themeModeKey, value.toString());
  }
}
