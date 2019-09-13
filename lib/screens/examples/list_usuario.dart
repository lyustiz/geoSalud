import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosalud/database/database.dart';
import 'package:geosalud/blocs/usuario/usuario_bloc_index.dart';
import 'package:geosalud/widgets/actions_buttons.dart';

class ListUsuario extends StatelessWidget {
  const ListUsuario({Key key, BuildContext context}) : super(key: key);

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
              final usuario = Usuarios(
                  usuId: null,
                  usuNom: 'Luis',
                  usuNom2: 'Daniel',
                  usuApe: 'Yustiz',
                  usuApe2: 'Azuaje',
                  usuNick: 'lyustiz',
                  usuKeyPass: '123456',
                  usuHashPass: '123456',
                  usuPassAlgoritmo: 'SHA256',
                  usuFlgAct: 1,
                  usuFlgGenerico: 1,
                  statusId: 1);
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
    final bloc = BlocProvider.of<UsuarioBloc>(context);
    return Container(
      child: BlocBuilder<UsuarioBloc, UsuarioState>(builder: (context, state) {
        print(state);
        if (state is UsuarioInitial) {
          bloc.dispatch(GetAllUsuario());
          return Center(child: CircularProgressIndicator());
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
              child: Text(itemUser.usuId.toString()),
            ),
            Expanded(
              child: Text(itemUser.usuNom),
            ),
            Expanded(
              child: Text(itemUser.usuApe),
            ),
            Expanded(
              child: Text(itemUser.statusId.toString()),
            ),
            Expanded(
              child: Text(itemUser.usuApe2),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () async {
                  bool value = await Navigator.push(context,
                      MaterialPageRoute<bool>(builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text('Esta de Acuerdo?'),
                      ),
                      body: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          verticalDirection: VerticalDirection.up,
                          children: <Widget>[
                            RaisedButton(
                              child: Text('Aceptar'),
                              onPressed: () => Navigator.pop(context, true),
                            ),
                            RaisedButton(
                              child: Text('Cancelar'),
                              onPressed: () => Navigator.pop(context, false),
                            ),
                          ],
                        ),
                      ),
                    );
                  }));
                  if (value) {
                    bloc.dispatch(DeleteUsuario(itemUser));
                    final snackBar = SnackBar(
                      content: Text('Borrado'),
                      elevation: 6.0,
                      backgroundColor: Colors.redAccent,
                    );
                    Scaffold.of(context).removeCurrentSnackBar();
                    Scaffold.of(context).showSnackBar(snackBar);
                  } else {
                    final snackBar = SnackBar(
                        content: Text('Accion Cancelada'),
                        elevation: 6.0,
                        backgroundColor: Colors.orange);
                    Scaffold.of(context).removeCurrentSnackBar();
                    Scaffold.of(context).showSnackBar(snackBar);
                  }
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute<bool>(builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text('Formulario'),
                      ),
                      body: new FormContainer(
                        usuario: itemUser,
                      ),
                    );
                  }));
                },
              ),
            )
          ],
        ),
      );
    },
  ));
}

class FormContainer extends StatelessWidget {
  final Usuarios usuario;
  const FormContainer({Key key, this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Form(
            autovalidate: true,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Primer Nombre'),
                  initialValue: usuario.usuNom,
                  validator: (String value) {
                    return value.contains('@')
                        ? 'Do not use the @ char.'
                        : null;
                  },
                ),
                TextFormField(
                    decoration: InputDecoration(labelText: 'Segundo Nombre'),
                    initialValue: usuario.usuNom2),
                TextFormField(
                    decoration: InputDecoration(labelText: 'Prmer Apellido'),
                    initialValue: null),
                TextFormField(
                    decoration: InputDecoration(labelText: 'Segundo Apellido'),
                    initialValue: usuario.usuApe2),
                TextFormField(
                    decoration: InputDecoration(labelText: 'Usuario'),
                    initialValue: usuario.usuNick),
                TextFormField(
                    decoration: InputDecoration(labelText: 'password'),
                    initialValue: usuario.usuKeyPass),
                TextFormField(
                    decoration: InputDecoration(labelText: 'Status'),
                    initialValue: usuario.statusId.toString())
              ],
            ),
          ),
        ),
      ],
    );
  }
}
