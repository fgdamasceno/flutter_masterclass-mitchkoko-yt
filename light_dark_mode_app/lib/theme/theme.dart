import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.teal.shade400,
    primary: Colors.teal.shade300,
    secondary: Colors.teal.shade200,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.teal.shade900,
    primary: Colors.teal.shade800,
    secondary: Colors.teal.shade700,
  ),
);
