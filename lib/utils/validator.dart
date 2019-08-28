/// This class handles common fields validations
class Validator {

  /// Validates a TextField
  /// Returns null if everything is OK or a String with the error.
  /// Expects a String 'value' and a String 'fieldName'
  static isRequired({String value, String fieldName = 'informacion'}){
    if (value == null || value.isEmpty) {
      return 'Debe ingresar su' + ' ' + fieldName;
    }
    return null;
  }

}