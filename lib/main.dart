import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
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

    return Provider(
      builder: (_) => GeoDatabase(),
      child: MaterialApp(
          //debugShowCheckedModeBanner: false, //Ocultar Banderita debub
          title: 'Geosalud',
          theme: themeData,
          routes: Routes.routes,
      ),
    );
  }
}
