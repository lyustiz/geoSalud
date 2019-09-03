import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class UsuarioState extends Equatable {
  UsuarioState([List props = const[]]) : super(props);
}

class UsuarioInitial extends UsuarioState {}

class UsuarioLoading extends UsuarioState {}

class UsuarioLoaded extends UsuarioState {
  final Usuarios usuario;
  UsuarioLoaded(this.usuario) : super[usuario];
}