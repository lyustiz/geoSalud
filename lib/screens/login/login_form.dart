import "package:flutter/material.dart";
import "../../utils/tools.dart";
import "./login_form_fields.dart";

class LoginForm extends StatelessWidget {

  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Text(
          'Ingresa tu usuario',
          textScaleFactor: 1.0,
          style: TextStyle(
            fontSize: Tools.getFontSizeBySP(18.0),
            color: Color(Tools.hexStringToHexInt('#4d4f5c')).withOpacity(0.8),
          ),
        ),
        Container(
          child: LoginFormFields(),
          margin: EdgeInsets.symmetric(horizontal: 20.0),
        )
      ],
    );
  }
}
