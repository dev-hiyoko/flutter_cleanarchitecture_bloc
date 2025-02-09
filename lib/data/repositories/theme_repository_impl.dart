import 'package:flutter/material.dart';
import 'package:flutter_cleanarchitecture_bloc/data/data_sources/theme_data_source.dart';
import 'package:flutter_cleanarchitecture_bloc/domain/repositories/theme_repository.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeDataSource _dataSource = ThemeDataSource();

  @override
  ThemeMode getTheme() {
    return _dataSource.getTheme();
  }

  @override
  void updateTheme(ThemeMode value) {
    _dataSource.saveTheme(value);
  }
}
