import "package:flutter/material.dart";
import "../../utils/tools.dart";
import "../../widgets/form/custom_text_form_field_contained.dart";
import "../../widgets/form/custom_dropdown_button_contained.dart";

class LoginFormFields extends StatefulWidget {
  LoginFormFields({Key key}) : super(key: key);

  @override
  _LoginFormFieldsState createState() => _LoginFormFieldsState();
}

class _LoginFormFieldsState extends State<LoginFormFields> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  String _rol;
  String _perfil;
  bool _combosEnabled = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomTextFormFieldContained(
              customTextFieldController: _usernameController,
              inputLabel: "Usuario",
            ),
            CustomTextFormFieldContained(
              customTextFieldController: _passwordController,
              inputLabel: "Contraseña",
              obscureText: true,
            ),
            (_combosEnabled)
                ? CustomDropdownButtonContained(
                    inputLabel: 'Rol',
                    value: _rol,
                    items: <String>['Medicina General'],
                    changeCallBack: (value) {
                      setState(() {
                        _rol = value;
                      });
                    },
                  )
                : Container(),
            (_combosEnabled)
                ? CustomDropdownButtonContained(
                    inputLabel: 'Perfil',
                    value: _perfil,
                    items: <String>['Medico a domicilio'],
                    changeCallBack: (value) {
                      setState(() {
                        _perfil = value;
                      });
                    },
                  )
                : Container(),
            Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: ButtonTheme(
                      minWidth:
                          Tools.getSizeByPercentage(screenSize.width / 2, 28),
                      height: Tools.getSizeByPercentage(screenSize.height, 6.3),
                      child: RaisedButton(
                        color: Color(Tools.hexStringToHexInt('#0a6bdc')),
                        textColor: Colors.white,
                        onPressed: () {
                          if (_formKey.currentState.validate() &&
                              _combosEnabled == false) {
                            setState(() {
                              _combosEnabled = true;
                            });
                          } else if (_formKey.currentState.validate() &&
                              _combosEnabled == true) {
                            Scaffold.of(context).showSnackBar(new SnackBar(
                              content: new Text("Login"),
                            ));
                            setState(() {
                              _combosEnabled = false;
                            });
                          }
                        },
                        child: Text(
                          'Ingresar',
                          style: TextStyle(
                              fontSize: Tools.getFontSizeBySP(18.0),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
