import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:geosalud/database/database.dart';

@immutable
abstract class UsuarioEvent extends Equatable {
  UsuarioEvent([List props = const[]]) : super(props);
}

class GetUsuario extends UsuarioEvent {
  final int idUsuario;

  GetUsuario(this.idUsuario) : super([idUsuario]);

  @override
  String toString() => 'GetUsuario';
}

class GetAllUsuario extends UsuarioEvent {

  @override
  String toString() => 'GetAllUsuario';
}

class UpdateUsuario extends UsuarioEvent {
  final Usuarios usuario;
  UpdateUsuario(this.usuario) : super([usuario]);

  @override
  String toString() => 'UpdateUsuario';
}

class InsertUsuario extends UsuarioEvent {
  final Usuarios usuario;
  InsertUsuario(this.usuario);

  @override
  String toString() => 'InsertUsuario';
}

class DeleteUsuario extends UsuarioEvent {
  final Usuarios usuario;
  DeleteUsuario(this.usuario) : super([usuario]);

  @override
  String toString() => 'DeleteUsuario';
}
