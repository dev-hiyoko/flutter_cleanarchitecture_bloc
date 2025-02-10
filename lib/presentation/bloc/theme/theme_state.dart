import 'package:flutter/material.dart';

abstract class ThemeState {
  ThemeMode get value => ThemeMode.system;
}

class ThemeInitial extends ThemeState {
  final ThemeMode theme;
  ThemeInitial(this.theme);
  ThemeMode get value => theme;
}

class ThemeValue extends ThemeState {
  final ThemeMode theme;
  ThemeValue(this.theme);
  ThemeMode get value => theme;
}