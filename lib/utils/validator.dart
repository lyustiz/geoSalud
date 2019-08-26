/// This class handles common fields validations
class Validator {

  /// Validates a TextField
  /// Returns null if everything is OK or a String with the error.
  static isRequired(String value){
     if (value.isEmpty) {
      return 'El campo no puede estar vacio';
    }
    return null;
  }

}