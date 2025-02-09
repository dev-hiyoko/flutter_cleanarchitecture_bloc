import 'package:flutter_cleanarchitecture_bloc/domain/repositories/counter_repository.dart';

class IncrementCounter {
  final CounterRepository repository;

  IncrementCounter(this.repository);

  void execute() {
    final currentValue = repository.getCounter();
    repository.updateCounter(currentValue + 1);
  }
}
