import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {
  const CounterObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    //ignore: avoid_print
    print('${bloc.runtimeType} $change');
  }
}

/* Notas:
- BlocObserver: usado para observar as mudanças de estado e eventos que ocorrem
nos BLoCs de forma global. Fornece um mecanismo para registrar as mudanças de 
estado, erros e transições. Pode capturar todo evento dos BLoCs, do sem nascimento
até seu fim.
- onChange: vê todas mudanças de estado que ocorrem no BLoC. Chamado sempre que
um novo estado é emitido em qualquer BLoC.
*/