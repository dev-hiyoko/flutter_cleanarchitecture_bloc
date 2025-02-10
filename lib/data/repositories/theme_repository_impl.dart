import 'package:flutter/material.dart';
import 'package:flutter_cleanarchitecture_bloc/data/data_sources/theme_data_source.dart';
import 'package:flutter_cleanarchitecture_bloc/domain/repositories/theme_repository.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeDataSource _dataSource = ThemeDataSource();

  @override
  Future<ThemeMode> getTheme() async {
    return await _dataSource.getTheme();
  }

  @override
  Future<void> updateTheme(ThemeMode value) async {
    _dataSource.saveTheme(value);
  }
}
