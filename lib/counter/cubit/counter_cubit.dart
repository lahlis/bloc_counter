import 'package:bloc/bloc.dart';

//Cubit que gerencia um int e seu estado

class CounterCubit extends Cubit<int>{
  CounterCubit() : super(0); //estado inicial: 0

  // Adiciona 1 no estado atual
  void increment() => emit(state + 1);

  //Subtrai 1 do estado atual
  void decrement() => emit(state - 1);
}