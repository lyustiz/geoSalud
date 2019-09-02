import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosalud/blocs/counter_bloc.dart';
import 'blocs/app_bloc_delegate.dart';
import 'package:geosalud/home_screen.dart';

void main(){
  ///delegar el comportamiento de Eventos, Transiciones y Errorres para todos los bloc
  BlocSupervisor.delegate = AppDelegate(); 

  runApp(
   BlocProvider(
     builder: (BuildContext context) => CounterBloc(),
     child:  MaterialApp(
      //debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(),
    ),
   )
   
  );


}






























/* import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'login.dart';
import 'logingFields.dart';
import 'VisorOS.dart';
import 'visorFicha.dart';
import 'user_list.dart'; */






/* import 'database/database.dart';
 */
//https://flutterbyexample.com/flutter-widgets
//https://blog.usejournal.com/compile-time-dependency-injection-in-flutter-95bb190b4a71?gi=31c40fa6abd4
//https://medium.com/flutterpub/architecting-your-flutter-project-bd04e144a8f1
//https://www.adictosaltrabajo.com/2019/04/30/primeros-pasos-con-flutter/
//void main() => runApp(MyApp());
/* 
void main(){
  //debugPaintSizeEnabled =true;
  runApp(MyApp());
}
 *//* 
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

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
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: UserList(),
        ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(

      drawerDragStartBehavior: DragStartBehavior.start,
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/login.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                height: screenSize.height,
                child: Text('login')
                ),
              ),
            Expanded(
                child: Column(
                  children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top:165.9),
                                child: Login(),
                              ), 
                              LoginFields()
                            ],
                ))
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}


 */