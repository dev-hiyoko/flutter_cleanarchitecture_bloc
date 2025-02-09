import 'package:flutter/material.dart';

abstract class ThemeRepository {
  ThemeMode getTheme();
  void updateTheme(ThemeMode value);
}
