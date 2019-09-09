import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:geosalud/database/database.dart';

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
  final usuario = Usuarios(
    usuId: null,
    usuNom:  'Luis',
    usuNom2: 'Daniel',
    usuApe: 'Yustiz',
    usuApe2: 'Azuaje',
    usuNick: 'lyustiz',
    usuKeyPass: '123456',
    usuHashPass: '123456',
    usuPassAlgoritmo: 'SHA256',
    usuFlgAct: 1,
    usuFlgGenerico: 1,
    statusId: 1 );

  dao.insUsuario(usuario);
}

ListTile _buildListItem(Usuarios itemUser, UsuarioDao dao) {
  return ListTile(
      title: Row(
    children: <Widget>[
      Expanded(child: Text(itemUser.usuNom)),
      Expanded(child: Text(itemUser.usuApe.toString())),
      Expanded(child: Text(itemUser.usuKeyPass)),
      Expanded(child: Text(itemUser.statusId.toString())),
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

StreamBuilder<List<Usuarios>> _buildUserList(BuildContext context) {
  final dao = Provider.of<GeoDatabase>(context).usuarioDao;
  return StreamBuilder(
    stream: dao.watchAllUsuario(),
    builder: (context, AsyncSnapshot<List<Usuarios>> snapshot) {
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
