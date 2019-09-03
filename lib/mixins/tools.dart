/// Class that handles common utilities
abstract class Tools {
  // This class is intended to be used as a mixin, and should not be
  // extended directly.
  factory Tools._() => null;

  /// Returns a double that represents the correct size to use in flutter.
  /// Expects a double 'parentSize' (Parent container size) and a double 'percentage'
  /// (Percentage % obtained from any design tool, it could be the same percentage used on CSS)
  double getSizeByPercentage(double parentSize, double percentage) {
    return parentSize * (percentage / 100);
  }

  /// Returns a integer that represents a color
  /// Expects a String hex (Hexadecimal string that represents the color)
  int hexStringToHexInt(String hex) {
    hex = hex.replaceFirst('#', '');
    hex = hex.length == 6 ? 'ff' + hex : hex;
    int val = int.parse(hex, radix: 16);
    return val;
  }

  /// Returns a double that represents the fontSize expected by flutter
  /// Expects a douvle fontSize (FontSize measured using SP)
  double getFontSizeBySP(double fontSize) {
    return fontSize / 2;
  }
}
