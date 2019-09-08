/// Class that handles fields validation
abstract class Validator {
  // This class is intended to be used as a mixin, and should not be
  // extended directly.
  factory Validator._() => null;

  /// Validates a TextField
  /// Returns null if everything is OK or a String with the error.
  /// Expects a String 'value' and a String 'fieldName'
  isRequired({String value, String fieldName = 'informacion'}) {
    if (value == null || value.isEmpty) {
      return 'Debe ingresar su' + ' ' + fieldName;
    }
    return null;
  }
}