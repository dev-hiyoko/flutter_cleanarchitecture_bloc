import 'package:flutter/material.dart';

abstract class ThemeState {
  ThemeMode get value => ThemeMode.system;
}

class ThemeInitial extends ThemeState {}

class ThemeValue extends ThemeState {
  final ThemeMode theme;

  ThemeValue(this.theme);
  @override
  ThemeMode get value => theme;
}