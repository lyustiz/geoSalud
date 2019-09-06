 import 'package:bloc/bloc.dart';
 import 'usuario_event.dart';
 import 'usuario_state.dart';
 import 'package:geosalud/database/database.dart';

 
class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  final GeoDatabase db;

  UsuarioBloc( this.db);

  @override
  UsuarioState get initialState {
    
    return UsuarioInitial();
  } 

///opcional
 @override
  void  onEvent(UsuarioEvent event){
    print('CallBLoc: Evento: $event');
  }
///opcional
  @override
  void onTransition(Transition<UsuarioEvent, UsuarioState> transition){
    print('CallBLoc: Transicion: $transition');
  }
///opcional
  @override
  void onError(Object error, StackTrace stackTrace){
    print('CallBLoc: error: $error, stacktrace: $stackTrace');
  }

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
   
   final UsuarioDao dao = GeoDatabase().usuarioDao;

    if (event is GetAllUsuario) {
      yield UsuarioLoading();
      final usuarios  = await dao.allUsusarios();
      yield UsuarioLoaded(usuarios);
    }

    if (event is DeleteUsuario) {
      yield UsuarioLoading();
        final deletes  = await dao.deleteUsuario(event.usuario);
        if(deletes > 0)
        {
          final usuarios  = await dao.allUsusarios();
          yield UsuarioLoaded(usuarios);

        }else{
          print('Error deleting  $deletes');
          yield UsuarioError();
        }

    }

    if (event is InsertUsuario) {
      yield UsuarioLoading();

        final inserts = await dao.insUsuario(event.usuario);
        if(inserts > 0)
        {
          final usuarios  = await dao.allUsusarios();
          yield UsuarioLoaded(usuarios);

        }else{
          print('Error Insert  $inserts');
          yield UsuarioError();
        }

        
    }


  }

  
}