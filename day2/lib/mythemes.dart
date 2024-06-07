import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Colors.white,
    onPrimary: const Color(0xFF5D646F),
    inversePrimary: const Color(0xFF000000),
    secondary: const Color(0xFF4D4F97),
    onSecondary: Colors.white,
    tertiary: const Color(0xFF979EA8),
    surface: const Color.fromRGBO(252, 252, 252, 1),
    onSurface: Colors.grey.shade700, 
    error: Colors.red.shade700,
    onError: Colors.grey.shade100,
  )
);