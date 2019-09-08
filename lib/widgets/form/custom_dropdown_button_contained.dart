import "package:flutter/material.dart";
import "package:geosalud/minxins/tools.dart";
import "package:geosalud/minxins/validator.dart";

// Definition for [ValidatorCallBack]
typedef ChangeCallBack = void Function(String value);
// Definition for [ValidatorCallBack]
typedef ValidatorCallBack = String Function(String value);

/// Widget that wraps [CustomDropDownButton] in a Container and simplifies implementation to allow better handling inside forms
class CustomDropdownButtonContained extends StatelessWidget
    with Tools, Validator {
  final String value, inputLabel;
  final List<String> items;
  final EdgeInsets margin, contentPadding;
  final Icon icon;
  final TextStyle labelStyle, errorStyle, textStyle;
  final ChangeCallBack changeCallBack;
  final ValidatorCallBack validatorCallBack;

  CustomDropdownButtonContained(
      {@required this.value,
      @required this.items,
      @required this.inputLabel,
      @required this.changeCallBack,
      this.margin,
      this.contentPadding,
      this.icon,
      this.labelStyle,
      this.errorStyle,
      this.textStyle,
      this.validatorCallBack});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      margin: (margin != null)
          ? margin
          : EdgeInsets.only(
              bottom: getSizeByPercentage(screenSize.height, 1.0),
            ),
      child: CustomDropdownButton(
        icon: (icon != null)
            ? icon
            : Icon(
                Icons.keyboard_arrow_down,
                color: Color(hexStringToHexInt('#2b2e37')),
                size: 13.0,
              ),
        decoration: InputDecoration(
          isDense: true,
          contentPadding:
              (contentPadding != null) ? contentPadding : EdgeInsets.zero,
          alignLabelWithHint: true,
          hasFloatingPlaceholder: true,
          labelText: inputLabel,
          labelStyle: (labelStyle != null)
              ? labelStyle
              : TextStyle(
                  fontSize: getFontSizeBySP(16.0),
                  color: Color(hexStringToHexInt('#2b2e37')),
                  height: 2.1),
          errorStyle: (errorStyle != null)
              ? errorStyle
              : TextStyle(
                  fontSize: getFontSizeBySP(14.0),
                  color: Color(hexStringToHexInt('#ff746a')),
                ),
        ),
        value: value,
        onChanged: (value) => changeCallBack(value),
        validator: (value) => (validatorCallBack != null)
            ? validatorCallBack(value)
            : isRequired(value: value, fieldName: inputLabel.toLowerCase()),
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              textScaleFactor: 1.0,
              style: (textStyle != null)
                  ? textStyle
                  : TextStyle(fontSize: getFontSizeBySP(16.0)),
            ),
          );
        }).toList(),
      ),
    );
  }
}

/// A convenience widget that wraps a [DropdownButton] in a [FormField].
class CustomDropdownButton<T> extends FormField<T> {
  final Key key;
  final T value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T> onChanged;
  final InputDecoration decoration;
  final FormFieldSetter<T> onSaved;
  final FormFieldValidator<T> validator;
  final Widget hint;
  final Icon icon;

  /// Creates a [DropdownButton] widget wrapped in an [InputDecorator] and
  /// [FormField].
  ///
  /// The [DropdownButton] [items] parameters must not be null.
  CustomDropdownButton({
    this.key,
    this.value,
    @required this.items,
    this.onChanged,
    this.decoration = const InputDecoration(),
    this.onSaved,
    this.validator,
    this.hint,
    this.icon,
  })  : assert(decoration != null),
        super(
            key: key,
            onSaved: onSaved,
            initialValue: value,
            validator: validator,
            builder: (FormFieldState<T> field) {
              final InputDecoration effectiveDecoration = decoration
                  .applyDefaults(Theme.of(field.context).inputDecorationTheme);
              return InputDecorator(
                decoration:
                    effectiveDecoration.copyWith(errorText: field.errorText),
                isEmpty: value == null,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<T>(
                    icon: (icon != null)
                        ? icon
                        : Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: decoration.labelStyle.fontSize * 2,
                          ),
                    isDense: true,
                    value: value,
                    items: items,
                    hint: hint,
                    onChanged: field.didChange,
                  ),
                ),
              );
            });

  @override
  FormFieldState<T> createState() => _CustomDropdownButtonState<T>();
}

class _CustomDropdownButtonState<T> extends FormFieldState<T> {
  @override
  CustomDropdownButton<T> get widget => super.widget;

  @override
  void didChange(T value) {
    super.didChange(value);
    if (widget.onChanged != null) widget.onChanged(value);
  }
}
