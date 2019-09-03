import 'package:bloc/bloc.dart';
import 'package:bloc/bloc.dart';



class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  static final UsuarioBloc _usuarioBlocSingleton = new UsuarioBloc._internal();
  factory UsuarioBloc() {
    return _usuarioBlocSingleton;
  }
  
  UsuarioState get initialState => new UnUsuarioState();

  @override
  Stream<UsuarioState> mapEventToState(
    UsuarioEvent event,
  ) async* {
    try {
      yield await event.applyAsync(currentState: currentState, bloc: this);
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      yield currentState;
    }
  }
}
