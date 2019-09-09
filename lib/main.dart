import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosalud/blocs/usuario/usuario_bloc_index.dart';
import 'theme/app_theme.dart';
import 'database/database.dart';
import 'routes/routes.dart';

void main() {
  //debugPaintSizeEnabled =true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //BlocSupervisor.delegate = AppDelegate();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
   
    final GeoDatabase db = GeoDatabase();
    final usuarioClass = Usuarios;

    return BlocProvider(
      builder: (BuildContext context) => UsuarioBloc(db, usuarioClass),
      child: Provider(
        builder: (_) => db,
        child: MaterialApp(
            //debugShowCheckedModeBanner: false, //Ocultar Banderita debug
            title: 'Geosalud',
            theme: themeData,
            routes: Routes.routes,
        ),
      ),
    );
  }
}
