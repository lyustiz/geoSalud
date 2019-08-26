import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/logo_image.dart';
import '../screens/login/login_form.dart';
import '../utils/tools.dart';

class LoginScreen extends StatelessWidget {
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
                child: Column(
              children: <Widget>[
                Container(
                  height: Tools.getSizeByPercentage(screenSize.height, 8.1),
                  width: Tools.getSizeByPercentage(screenSize.width / 2, 47),
                  margin: EdgeInsets.only(
                      left: Tools.getSizeByPercentage(screenSize.width / 2, 24),
                      top: Tools.getSizeByPercentage(screenSize.height, 20.7),
                      right:
                          Tools.getSizeByPercentage(screenSize.width / 2, 29)),
                  child: LogoImage(),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: Tools.getSizeByPercentage(screenSize.height, 1.2),
                  ),
                  child: LoginForm(
                    screenSize: screenSize,
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
