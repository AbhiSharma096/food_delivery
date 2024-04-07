import 'package:flutter/material.dart';
import 'package:food_delivery/themes/dark_mode.dart';
import 'package:food_delivery/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themedata = lightMode;
  ThemeData get themeData => _themedata;

  bool get isDarkMode => _themedata == darkMode;

  set themedata(ThemeData themeData) {
    _themedata = themeData;
    notifyListeners();
  }

  void togleThemes() {
    if (_themedata == lightMode) {
      themedata = darkMode;
    } else {
      themedata = lightMode;
    }
    
  }
}
