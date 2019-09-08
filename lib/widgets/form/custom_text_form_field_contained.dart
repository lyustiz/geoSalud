import "package:flutter/material.dart";
import "package:geosalud/minxins/tools.dart";
import "package:geosalud/minxins/validator.dart";
// Definition for [ValidatorCallBack]
typedef ValidatorCallBack = String Function(String value);

/// Widget that wraps [TextFormField] inside a container and adds some
/// default values to reduce space when using it
class CustomTextFormFieldContained extends StatelessWidget
    with Tools, Validator {
  final String inputLabel;
  final TextEditingController customTextFieldController;
  final EdgeInsets margin, contentPadding;
  final TextStyle labelStyle, textStyle, errorStyle;
  final bool obscureText;
  final ValidatorCallBack validatorCallBack;

  CustomTextFormFieldContained(
      {@required this.inputLabel,
      @required this.customTextFieldController,
      this.margin,
      this.contentPadding,
      this.labelStyle,
      this.textStyle,
      this.errorStyle,
      this.obscureText = false,
      this.validatorCallBack});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      margin: (margin != null)
          ? margin
          : EdgeInsets.only(
              bottom: getSizeByPercentage(screenSize.height, 1.0)),
      child: TextFormField(
        obscureText: obscureText,
        style: (textStyle != null)
            ? textStyle
            : TextStyle(
                fontSize: getFontSizeBySP(16.0),
                color: Color(hexStringToHexInt('#2b2e37')),
              ),
        decoration: InputDecoration(
          contentPadding: (contentPadding != null)
              ? contentPadding
              : EdgeInsets.only(
                  top: getSizeByPercentage(screenSize.height, 1.5),
                  bottom: getSizeByPercentage(screenSize.height, 1.0),
                ),
          labelText: inputLabel,
          labelStyle: (labelStyle != null)
              ? labelStyle
              : TextStyle(
                  fontSize: getFontSizeBySP(16.0),
                  color: Color(hexStringToHexInt('#2b2e37')),
                ),
          errorStyle: (errorStyle != null)
              ? errorStyle
              : TextStyle(
                  fontSize: getFontSizeBySP(14.0),
                  color: Color(hexStringToHexInt('#ff746a')),
                ),
        ),
        controller: customTextFieldController,
        validator: (value) => (validatorCallBack != null)
            ? validatorCallBack(value)
            : isRequired(value: value, fieldName: inputLabel.toLowerCase()),
      ),
    );
  }
}
