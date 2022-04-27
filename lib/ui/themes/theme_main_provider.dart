import 'package:flutter/material.dart';

class ThemeAppProvider with ChangeNotifier {
  bool _themeCondition = true;
  bool get themeCondition => _themeCondition;

  togglTheme() {
    _themeCondition = !(_themeCondition);
    notifyListeners();
  }
}
