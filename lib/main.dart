import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'logingFields.dart';
import 'VisorOS.dart';
import 'visorFicha.dart';

//https://flutterbyexample.com/flutter-widgets
//https://blog.usejournal.com/compile-time-dependency-injection-in-flutter-95bb190b4a71?gi=31c40fa6abd4
//https://medium.com/flutterpub/architecting-your-flutter-project-bd04e144a8f1
//https://www.adictosaltrabajo.com/2019/04/30/primeros-pasos-con-flutter/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VisorFicha(),
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


