import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cleanarchitecture_bloc/domain/repositories/theme_repository.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final ThemeRepository repository;

  ThemeBloc(this.repository) : super(ThemeInitial()) {
    on<ToggleThemeEvent>((event, emit) {
      final currentTheme = repository.getTheme();
      ThemeMode theme = currentTheme == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
      repository.updateTheme(theme);
      emit(ThemeValue(theme));
    });
  }
}