import 'package:bloc/bloc.dart';

class AppDelegate extends BlocDelegate{
  
  @override
  void  onEvent(Bloc bloc, Object event){
    super.onEvent(bloc, event);
    print('CallBLoc: ${bloc.runtimeType}, Evento: $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition){
    super.onTransition(bloc, transition);
    print('CallBLoc: ${bloc.runtimeType}, Transicion: $transition');
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace){
    super.onError(bloc, error, stacktrace);
    print('CallBLoc: ${bloc.runtimeType}, error: $error, stacktrace: $stacktrace');
  }
}