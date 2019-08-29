import 'package:moor_flutter/moor_flutter.dart';
import 'package:geosalud/database/database.dart';

class UsuariosDao extends UsuarioDao{

   final GeoDatabase db;

   UsuariosDao(this.db) : super(db);

  Future<List<Usuario>> allUsusarios() => select(usuarios).get();
  
  Stream<List<Usuario>> watchAllUsuario() => select(usuarios).watch();

  Future insUsuario(Usuario usuario) => into(usuarios).insert(usuario);

  // Updates a Task with a matching primary keyusuario
  Future updateUsuario(Usuario usuario) => update(usuarios).replace(usuario);

  Future deleteUsuario(Usuario usuario) => delete(usuarios).delete(usuario);

  Future <List<Usuario>> sortEntriesAlphabetically() {
    return (select(usuarios)..orderBy([(t) => OrderingTerm(expression: t.nombre)])).get();
  }


}