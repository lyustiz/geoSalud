import "package:flutter/material.dart";

/// A convenience widget that wraps a [DropdownButton] in a [FormField].
class CustomDropdownButton<T> extends FormField<T> {
  /// Creates a [DropdownButton] widget wrapped in an [InputDecorator] and
  /// [FormField].
  ///
  /// The [DropdownButton] [items] parameters must not be null.
  CustomDropdownButton({
    Key key,
    T value,
    @required List<DropdownMenuItem<T>> items,
    this.onChanged,
    InputDecoration decoration = const InputDecoration(),
    FormFieldSetter<T> onSaved,
    FormFieldValidator<T> validator,
    Widget hint,
    Icon icon,
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

  /// Called when the user selects an item.
  final ValueChanged<T> onChanged;

  @override
  FormFieldState<T> createState() =>
      _CustomDropdownButtonState<T>();
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
