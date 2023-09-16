import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  /// [state] = 0 = counter
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
