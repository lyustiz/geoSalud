import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:geosalud/database/database.dart';

@immutable
abstract class UsuarioEvent extends Equatable {
  UsuarioEvent([List props = const[]]) : super(props);
}

class GetUsuario extends UsuarioEvent {}

class GetAllUsuario extends UsuarioEvent {}

class UpdateUsuario extends UsuarioEvent {
  final Usuarios usuario;
  UpdateUsuarioEvent(this.usuario) : super[usuario];
}

class InsertUsuario extends UsuarioEvent {
  final Usuarios usuario;
  InsertUsuarioEvent(this.usuario) : super[usuario];
}

class DeleteUsuario extends UsuarioEvent {
  final Usuarios usuario;
  InsertUsuarioEvent(this.usuario) : super[usuario];
}