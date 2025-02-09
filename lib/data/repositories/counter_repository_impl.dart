import 'package:flutter_cleanarchitecture_bloc/data/data_sources/counter_data_source.dart';
import 'package:flutter_cleanarchitecture_bloc/domain/repositories/counter_repository.dart';

class CounterRepositoryImpl implements CounterRepository {
  final CounterDataSource _dataSource = CounterDataSource();

  @override
  int getCounter() {
    return _dataSource.getCounter();
  }

  @override
  void updateCounter(int value) {
    _dataSource.saveCounter(value);
  }
}
