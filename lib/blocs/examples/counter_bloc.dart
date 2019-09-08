import 'package:bloc/bloc.dart';

//definir eventos 
//enum si no pasan estados
// clase si pasan estados
enum CounterEvent { increment, decrement, reset }

// bloc <eventos, tipoEstado> 
class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  //eventos a estados
  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
   
    if (event == CounterEvent.increment) {
      yield currentState + 2;
    }

    if (event == CounterEvent.decrement) {
      yield currentState - 2;
    }

    if (event == CounterEvent.reset) {
      yield  0;
      //throw Exception('Exepcion prueba');
    }
  }
}
