import 'package:flutter/material.dart';

class AccessibilityConfig extends ChangeNotifier {
  double _fontScale = 1.0;
  ColorScheme _colorScheme = ColorScheme.light();
  bool _replaceSensitiveImage = false;
  bool _highContrast = false;

  double get fontScale => _fontScale;
  ColorScheme get colorScheme => _highContrast
      ? ColorScheme.highContrastLight()
      : _colorScheme;
  bool get replaceSensitiveImage => _replaceSensitiveImage;

  void setFontScale(double scale) {
    _fontScale = scale;
    notifyListeners();
  }

  void setColorScheme(String type) {
    if (type == 'deuteranopia') {
      _colorScheme = const ColorScheme.light(
        primary: Colors.blueGrey,
        secondary: Colors.orange,
      );
    } else if (type == 'tritanopia') {
      _colorScheme = const ColorScheme.light(
        primary: Colors.purple,
        secondary: Colors.yellow,
      );
    } else {
      _colorScheme = const ColorScheme.light();
    }
    notifyListeners();
  }

  void toggleSensitiveImage(bool value) {
    _replaceSensitiveImage = value;
    notifyListeners();
  }

  void toggleHighContrast(bool value) {
    _highContrast = value;
    notifyListeners();
  }
}
