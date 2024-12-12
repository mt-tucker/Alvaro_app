import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(super.initialState);

  void increment() {
    final newValue = state + 1;
    emit(newValue);
  }

  void remove() {
    final newValue = state - 1;
    emit(newValue);
  }
}
