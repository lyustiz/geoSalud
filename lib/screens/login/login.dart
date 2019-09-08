import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'loging_fields.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/logomd.png',
      fit: BoxFit.fill,), 
      width: 297.9,
      height: 64.4,

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

