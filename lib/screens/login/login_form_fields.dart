import "package:flutter/material.dart";
import "package:validate/validate.dart";
import "../../utils/tools.dart";
import "../../widgets/form/dropdown_button_form_field_with_variable_icon.dart";

class LoginFormFields extends StatelessWidget {

  final Size screenSize;

  LoginFormFields({Key key, this.screenSize}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final String dropdownValue = null;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              style: TextStyle(
                color: Color(Tools.hexStringToHexInt('#2b2e37')),
              ),
              decoration: InputDecoration(
                // isDense: true,
                contentPadding: EdgeInsets.zero,
                labelText: 'Usuario',
                labelStyle: TextStyle(
                  fontSize: Tools.getFontSizeBySP(16.0),
                ),
              ),
              validator: (value) => Validate.notEmpty(value),
            ),
            TextFormField(
              style: TextStyle(
                color: Color(Tools.hexStringToHexInt('#2b2e37')),
              ),
              decoration: InputDecoration(
                // isDense: true,
                contentPadding: EdgeInsets.zero,
                labelText: 'Contraseña',
                labelStyle: TextStyle(
                  fontSize: Tools.getFontSizeBySP(16.0),
                ),
              ),
              validator: (value) => Validate.notEmpty(value),
            ),
            DropdownButtonFormFieldWithVariableIcon(
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
                size: 16.0,
              ),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  // isDense: true,
                  labelText: 'Rol',
                  labelStyle: TextStyle(
                    fontSize: Tools.getFontSizeBySP(16.0),
                  )),
              value: dropdownValue,
              onChanged: (String newValue) {
                /* setState(() {
              dropdownValue = newValue;
            }); */
              },
              validator: (value) => Validate.notEmpty(value),
              items: <String>['One', 'Two', 'Three', 'Four']
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
            DropdownButtonFormFieldWithVariableIcon(
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
                size: 16.0,
              ),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  // isDense: true,
                  labelText: 'Perfil',
                  labelStyle: TextStyle(
                    fontSize: Tools.getFontSizeBySP(16.0),
                  )),
              value: dropdownValue,
              onChanged: (String newValue) {
                /* setState(() {
              dropdownValue = newValue;
            }); */
              },
              validator: (value) => Validate.notEmpty(value),
              items: <String>['One', 'Two', 'Three', 'Four']
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
                      minWidth: Tools.getSizeByPercentage(screenSize.width / 2, 14.5),
                      height: Tools.getSizeByPercentage(screenSize.height, 6.3),
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {}
                        },
                        child: Text('Ingresar'),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}