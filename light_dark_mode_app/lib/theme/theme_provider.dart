import 'package:flutter/material.dart';
import 'package:light_dark_mode_app/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  // get the value of _themeData variable
  ThemeData get themeData => _themeData;

  // sets the value for _themeData variable
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // toogle the value of _themeData variable
  void toogleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
