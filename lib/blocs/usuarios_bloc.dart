import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'usuario/usuario_event.dart';
import 'usuario/usuario_state.dart';
import 'package:geosalud/database/database.dart';

class UsuariosBloc extends Bloc<UsuarioEvent, UsuarioState> {
  final GeoDatabase db;

  UsuariosBloc( this.db);

  @override
  UsuarioState get initialState => UsuarioInitial();

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
    if (event is GetAllUsuario) {
      try {
        yield UsuarioLoading();
        final usuarios = await db.usuarioDao.allUsusarios();
        yield UsuarioLoaded(usuarios);
      } catch (_) {
        yield UsuarioError();
      }
    }


  }
}
