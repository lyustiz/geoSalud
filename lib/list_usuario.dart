import 'package:flutter/material.dart';
import 'package:geosalud/blocs/usuario/usuario_bloc.dart';
import 'package:geosalud/blocs/usuario/usuario_state.dart';
import 'package:geosalud/blocs/usuario/usuario_event.dart';
import 'package:geosalud/database/database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'actions_buttons.dart';

class ListUsuario extends StatelessWidget {
  const ListUsuario({Key key}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    final bloc = BlocProvider.of<UsuarioBloc>(buildContext);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de usuario usando Patron BLOC'),
      ),
      body: TableUsuario(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ActionsButtons(
            iconData: Icons.refresh,
            backgroudColor: Colors.orange,
            onPressed: () {
              bloc.dispatch(GetAllUsuario());
            },
          ),
          ActionsButtons(
            iconData: Icons.add,
            backgroudColor: Colors.green,
            onPressed: () {
              //agregar formulario (navegacion pantalla AddUser) 
              final usuario = Usuario(id: null, nombre: 'Otro Usuario', password: '123456', active: 1);
              bloc.dispatch(InsertUsuario(usuario));
            },
          ),
        ],
      ),
    );
  }
}

class TableUsuario extends StatelessWidget {
  const TableUsuario({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<UsuarioBloc, UsuarioState>(builder: (context, state) {
        if (state is UsuarioInitial) {
          return Center(child: Text('Sin data'));
        } else if (state is UsuarioLoading) {
          return Center(child: CircularProgressIndicator());
        } else {
          return listarUsuarios(context, state);
        }
      }),
    );
  }
}

Container listarUsuarios(context, state) {
  final bloc = BlocProvider.of<UsuarioBloc>(context);
  final usuarios = state.usuarios;

  return Container(
      child: ListView.builder(
    itemCount: usuarios.length,
    itemBuilder: (_, index) {
      final itemUser = usuarios[index];
      print(itemUser);
      return ListTile(
        title: Row(
          children: <Widget>[
            Expanded(
              child: Text(itemUser.id.toString()),
            ),
            Expanded(
              child: Text(itemUser.nombre),
            ),
            Expanded(
              child: Text(itemUser.password),
            ),
            Expanded(
              child: Text(itemUser.active.toString()),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  bloc.dispatch(DeleteUsuario(itemUser));
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
            )
          ],
        ),
      );
    },
  ));
  /* 
        return Center(
          
          child: ListView(
            children: <Widget>[
              Text('vacio'),
              ActionsButtons(
              iconData: Icons.add,
              onPressed: () {
                //counterBloc.dispatch(CounterEvent.increment);
              },
              backgroudColor: Colors.green,
            ),

            ],
          ),
        );

      }
    ) */
}
