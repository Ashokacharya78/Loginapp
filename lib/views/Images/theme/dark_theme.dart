import 'package:flutter/material.dart';

class Themeapp {
  static ThemeData lighTheme = ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(color: Colors.blueAccent),
      buttonTheme: ButtonThemeData(buttonColor: Colors.blue));

  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}
