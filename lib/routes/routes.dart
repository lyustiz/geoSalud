import 'package:flutter/material.dart';



import 'package:geosalud/screens/login/login.dart';
import 'package:geosalud/screens/visor/visor_os.dart';
import 'package:geosalud/screens/ficha/visor_ficha.dart';
import 'package:geosalud/screens/examples/user_list.dart'; 
import 'package:geosalud/screens/examples/list_usuario.dart';

class Routes {
  Routes._();

    static final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => ListUsuario(), 
    '/login': (BuildContext context) => LoginPage(),
    '/visor': (BuildContext context) => VisorOS(),
    '/ficha': (BuildContext context) => VisorFicha(),
    '/users': (BuildContext context) => UserList(),
    '/user2': (BuildContext context) => ListUsuario(),
  };
}

