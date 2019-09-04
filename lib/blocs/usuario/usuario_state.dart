import 'package:meta/meta.dart';
import 'package:geosalud/database/database.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class UsuarioState extends Equatable{
  UsuarioState([List props = const []]) : super(props);
}

class UsuarioInitial extends  UsuarioState{}

class UsuarioLoading extends UsuarioState{}

class UsuarioLoaded extends UsuarioState  {
  final List<Usuario> usuario;
  UsuarioLoaded(this.usuario);
} 