import 'package:flutter_application_cubit/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitStates());

  int counter = 0;

//add
  add() {
    counter++;
    emit(CounterUpdateStates());
  }

//remove

  remove() {
    counter--;
    emit(CounterUpdateStates());
  }
}
