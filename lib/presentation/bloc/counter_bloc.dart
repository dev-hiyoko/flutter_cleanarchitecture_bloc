import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cleanarchitecture_bloc/domain/repositories/counter_repository.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final CounterRepository repository;

  CounterBloc(this.repository) : super(CounterInitial()) {
    on<IncrementCounterEvent>((event, emit) {
      final currentCount = repository.getCounter();
      repository.updateCounter(currentCount + 1);
      emit(CounterValue(currentCount + 1));
    });

    on<DecrementCounterEvent>((event, emit) {
      final currentCount = repository.getCounter();
      repository.updateCounter(currentCount - 1);
      emit(CounterValue(currentCount - 1));
    });
  }
}