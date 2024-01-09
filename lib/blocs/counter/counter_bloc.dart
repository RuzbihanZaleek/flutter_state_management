import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      int value;
      if (event is IncrementEvent) {
        value = event.value;
        value++;
        emit(IncrementState(value: value));
      } else if (event is DecrementEvent) {
        value = event.value;
        value--;
        emit(DecrementState(value: value));
      }
    });
  }
}
