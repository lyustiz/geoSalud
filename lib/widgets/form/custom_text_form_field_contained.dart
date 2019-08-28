import "package:flutter/material.dart";
import "../../utils/tools.dart";
import "../../utils/validator.dart";

// Definition for [ValidatorCallBack]
typedef ValidatorCallBack = String Function(String value);

/// Widget that wraps [TextFormField] inside a container and adds some
/// default values to reduce space when using it
class CustomTextFormFieldContained extends StatelessWidget {
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
              bottom: Tools.getSizeByPercentage(screenSize.height, 1.5)),
      child: TextFormField(
        obscureText: obscureText,
        style: (textStyle != null)
            ? textStyle
            : TextStyle(
                fontSize: Tools.getFontSizeBySP(16.0),
                color: Color(Tools.hexStringToHexInt('#2b2e37')),
              ),
        decoration: InputDecoration(
          contentPadding: (contentPadding != null)
              ? contentPadding
              : EdgeInsets.only(
                  top: Tools.getSizeByPercentage(screenSize.height, 1.5),
                  bottom: Tools.getSizeByPercentage(screenSize.height, 1.0),
                ),
          labelText: inputLabel,
          labelStyle: (labelStyle != null)
              ? labelStyle
              : TextStyle(
                  fontSize: Tools.getFontSizeBySP(16.0),
                  color: Color(Tools.hexStringToHexInt('#2b2e37')),
                ),
          errorStyle: (errorStyle != null)
              ? errorStyle
              : TextStyle(
                  fontSize: Tools.getFontSizeBySP(14.0),
                  color: Color(Tools.hexStringToHexInt('#ff746a')),
                ),
        ),
        controller: customTextFieldController,
        validator: (value) => (validatorCallBack != null)
            ? validatorCallBack(value)
            : Validator.isRequired(
                value: value, fieldName: inputLabel.toLowerCase()),
      ),
    );
  }
}
