import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cleanarchitecture_bloc/domain/repositories/theme_repository.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final ThemeRepository repository;

  ThemeBloc(this.repository) : super(ThemeInitial(ThemeMode.system)) {
    on<InitializeThemeEvent>((event, emit) async {
      final initialTheme = await repository.getTheme();
      emit(ThemeValue(initialTheme));
    });

    on<ToggleThemeEvent>((event, emit) async {
      final currentTheme = await repository.getTheme();
      final theme =
      currentTheme == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
      await repository.updateTheme(theme);
      emit(ThemeValue(theme));
    });

    add(InitializeThemeEvent());
  }
}
