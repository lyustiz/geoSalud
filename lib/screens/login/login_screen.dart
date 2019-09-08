import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geosalud/widgets/logo_image.dart';
import 'package:geosalud/screens/login/login_form.dart';
import "package:geosalud/minxins/tools.dart";

class LoginScreen extends StatelessWidget with Tools {
  const LoginScreen({Key key}) : super(key: key);

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
                          fit: BoxFit.cover)),
                  height: screenSize.height,
                  child: Text('login')),
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: <Widget>[
                  Container(
                    height: getSizeByPercentage(screenSize.height, 8.1),
                    width: getSizeByPercentage(screenSize.width / 2, 47),
                    margin: EdgeInsets.only(
                        left: getSizeByPercentage(screenSize.width / 2, 24),
                        top: getSizeByPercentage(screenSize.height, 20.7),
                        right: getSizeByPercentage(screenSize.width / 2, 29)),
                    child: LogoImage(),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: getSizeByPercentage(screenSize.height, 1.2),
                        bottom: getSizeByPercentage(screenSize.height, 31.9)),
                    child: LoginForm(),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
