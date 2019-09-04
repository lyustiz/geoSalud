import 'package:meta/meta.dart';
import 'package:geosalud/database/database.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class UsuarioState extends Equatable{
  UsuarioState([List props = const []]) : super(props);
}

class UsuarioInitial extends  UsuarioState{

  @override
  String toString() => 'UsuarioInitial';
}

class UsuarioLoading extends UsuarioState{

  @override
  String toString() => 'UsuarioLoading';
}

class UsuarioLoaded extends UsuarioState  {
  final List<Usuario> usuarios;
  UsuarioLoaded(this.usuarios) : super([usuarios]);

  @override
  String toString() => 'UsuarioLoaded { usuarios: $usuarios }';
} 

class UsuarioError extends UsuarioState{

  @override
  String toString() => 'UsuarioError';
}
