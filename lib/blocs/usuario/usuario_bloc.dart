 import 'package:bloc/bloc.dart';
 import 'usuario_event.dart';
 import 'usuario_state.dart';
 import 'package:geosalud/database/database.dart';

 
class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  final GeoDatabase db;

  UsuarioBloc( this.db);

  @override
  UsuarioState get initialState => UsuarioInitial();


 @override
  void  onEvent(UsuarioEvent event){
    print('CallBLoc: Evento: $event');
  }

  @override
  void onTransition(Transition<UsuarioEvent, UsuarioState> transition){
    print('CallBLoc: Transicion: $transition');
  }

  @override
  void onError(Object error, StackTrace stackTrace){
    print('CallBLoc: error: $error, stacktrace: $stackTrace');
  }

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
   
   final UsuarioDao dao = GeoDatabase().usuarioDao;

   if (event is UsuarioInitial) {

      yield UsuarioLoading();
      print('inicial');
        final usuarios = await dao.allUsusarios();
      yield UsuarioLoaded(usuarios);
    }

    if (event is GetAllUsuario) {
      yield UsuarioLoading();
        final usuarios  = await dao.allUsusarios();
      yield UsuarioLoaded(usuarios);
    }


  }

  
}