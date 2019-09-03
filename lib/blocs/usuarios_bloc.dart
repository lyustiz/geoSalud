import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:geosalud/blocs/index.dart';

class UsuariosBloc extends Bloc<UsuariosEvent, UsuariosState> {
  static final UsuariosBloc _usuariosBlocSingleton = new UsuariosBloc._internal();
  factory UsuariosBloc() {
    return _usuariosBlocSingleton;
  }
  UsuariosBloc._internal();
  
  UsuariosState get initialState => new UnUsuariosState();

  @override
  Stream<UsuariosState> mapEventToState(
    UsuariosEvent event,
  ) async* {
    try {
      yield await event.applyAsync(currentState: currentState, bloc: this);
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      yield currentState;
    }
  }
}
