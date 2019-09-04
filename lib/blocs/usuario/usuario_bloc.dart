 import 'package:bloc/bloc.dart';
 import 'usuario_event.dart';
 import 'usuario_state.dart';
 import 'package:moor_flutter/moor_flutter.dart';
 import 'package:geosalud/database/database.dart';

 
class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  
  @override
  UsuarioState get initialState => UsuarioInitial();


  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
   
   
   if (event is GetUsuario) {

      yield UsuarioLoading();
        UsuarioDao dao;
        final List<Usuario> usuarios = await dao.allUsusarios();
      yield UsuarioLoaded(usuarios);
    }


  }
}