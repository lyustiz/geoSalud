import "package:flutter/material.dart";
import "../../utils/tools.dart";
import "../../utils/validator.dart";
import "../../widgets/form/custom_text_form_field.dart";
import "../../widgets/form/custom_dropdown_button.dart";

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
            CustomTextFormField(
              customTextFieldController: _usernameController,
              inputLabel: "Usuario",
            ),
            CustomTextFormField(
              customTextFieldController: _passwordController,
              inputLabel: "Contraseña",
              obscureText: true,
            ),
            CustomDropdownButton(
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Color(Tools.hexStringToHexInt('#2b2e37')),
                size: 13.0,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                alignLabelWithHint: true,
                hasFloatingPlaceholder: true,
                labelText: 'Rol',
                labelStyle: TextStyle(
                  fontSize: Tools.getFontSizeBySP(16.0),
                  color: Color(Tools.hexStringToHexInt('#2b2e37')),
                ),
                errorStyle: TextStyle(
                  fontSize: Tools.getFontSizeBySP(14.0),
                  color: Color(Tools.hexStringToHexInt('#ff746a')),
                ),
              ),
              value: _rol,
              onChanged: (value) {
                setState(() {
                  _rol = value;
                });
              },
              validator: (value) =>
                  Validator.isRequired(value: value, fieldName: 'rol'),
              items: <String>['Medicina General']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    textScaleFactor: 1.0,
                    style: TextStyle(
                      fontSize: Tools.getFontSizeBySP(16.0),
                    ),
                  ),
                );
              }).toList(),
            ),
            Container(
              height: Tools.getSizeByPercentage(screenSize.height, 1.5),
            ),
            CustomDropdownButton(
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Color(Tools.hexStringToHexInt('#2b2e37')),
                size: 13.0,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                alignLabelWithHint: true,
                hasFloatingPlaceholder: true,
                labelText: 'Perfil',
                labelStyle: TextStyle(
                  fontSize: Tools.getFontSizeBySP(16.0),
                  color: Color(Tools.hexStringToHexInt('#2b2e37')),
                ),
                errorStyle: TextStyle(
                  fontSize: Tools.getFontSizeBySP(14.0),
                  color: Color(Tools.hexStringToHexInt('#ff746a')),
                ),
              ),
              value: _perfil,
              onChanged: (value) {
                setState(() {
                  _perfil = value;
                });
              },
              validator: (value) =>
                  Validator.isRequired(value: value, fieldName: 'perfil'),
              items: <String>['Medico a domicilio']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    textScaleFactor: 1.0,
                    style: TextStyle(
                      fontSize: Tools.getFontSizeBySP(16.0),
                    ),
                  ),
                );
              }).toList(),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: ButtonTheme(
                      minWidth: Tools.getSizeByPercentage(
                          screenSize.width / 2, 28),
                      height: Tools.getSizeByPercentage(
                          screenSize.height, 6.3),
                      child: RaisedButton(
                        color: Color(Tools.hexStringToHexInt('#0a6bdc')),
                        textColor: Colors.white,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {}
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
