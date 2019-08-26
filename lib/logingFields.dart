import "package:flutter/material.dart";


class LoginFields extends StatelessWidget {
  const LoginFields({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Text('Ingresa tu usuario',
        style: TextStyle(
            fontSize: 18.0,
            color: Color(hexStringToHexInt('#4d4f5c')).withOpacity(0.8),
        ),
        ),
        Container(
          child: FormLogin(),
          margin: EdgeInsets.symmetric(horizontal: 20.0),
        )
        
      ],
    );
  }
}

hexStringToHexInt(String hex) {
  hex = hex.replaceFirst('#', '');
  hex = hex.length == 6 ? 'ff' + hex : hex;
  int val = int.parse(hex, radix: 16);
  return val;
}

/*class FormLogin extends StatefulWidget {
  //FormLogin({Key key}) : super(key: key);

  _FormLoginState createState() => _FormLoginState();
}*/


/*
class _FormLoginState extends State<FormLogin> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Form(
         key: _formKey,
         child: Text('Hola'),
       ),
    );
  }
}
*/


class FormLogin extends StatelessWidget {
  FormLogin({Key key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'prueba',
              labelText: 'Usuario',
              labelStyle:  TextStyle(
                fontSize: 16.0,
                color: Color(hexStringToHexInt('#2b2e37')),
              ),
            ),
            validator: (value){
              if (value.isEmpty)
              {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'prueba',
              labelText: 'Contraseña',
              labelStyle:  TextStyle(
                fontSize: 16.0,
                color: Color(hexStringToHexInt('#2b2e37')),
              ),
            ),
            validator: (value){
              if (value.isEmpty)
              {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  if(_formKey.currentState.validate()){

                  }
                },
                child: Text('Ingresar'),
              ),
            )
        ],
      ),
    );
  }
}