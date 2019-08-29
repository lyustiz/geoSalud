import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'database/database.dart';

class UserList extends StatefulWidget {
  UserList({Key key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
          title: Row(
        children: <Widget>[
          Expanded(
            child: Text('Listar Usuarios'),
          ),
          RaisedButton(
            child: Text('Agregar'),
            onPressed: () {
              addUser(context);
            },
          )
        ],
      )),
      body: Column(
        children: <Widget>[
          Expanded(
            child: _buildUserList(context),
          )
        ],
      ),
    ));
  }
}

//agregar un formulario para esta funcion
addUser(context) {
  final dao = Provider.of<GeoDatabase>(context).usuarioDao;
  final usuario =
      Usuario(id: null, nombre: 'Otro Usuario', password: '123456', active: 1);

  dao.insUsuario(usuario);
}

ListTile _buildListItem(Usuario itemUser, UsuarioDao dao) {
  return ListTile(
      title: Row(
    children: <Widget>[
      Expanded(child: Text(itemUser.nombre)),
      Expanded(child: Text(itemUser.id.toString())),
      Expanded(child: Text(itemUser.password)),
      Expanded(child: Text(itemUser.active.toString())),
      Expanded(
          child: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                dao.deleteUsuario(itemUser);
              },
      )),
      Expanded(
          child: IconButton(
        icon: Icon(Icons.edit),
        onPressed: () {},
      )),
    ],
  ));
}

StreamBuilder<List<Usuario>> _buildUserList(BuildContext context) {
  final dao = Provider.of<GeoDatabase>(context).usuarioDao;
  return StreamBuilder(
    stream: dao.watchAllUsuario(),
    builder: (context, AsyncSnapshot<List<Usuario>> snapshot) {
      final usuarios = snapshot.data ?? List();

      return ListView.builder(
        itemCount: usuarios.length,
        itemBuilder: (_, index) {
          final itemUser = usuarios[index];
          return _buildListItem(itemUser, dao);
        },
      );
    },
  );
}
