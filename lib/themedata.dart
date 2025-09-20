import 'package:flutter/material.dart';

final ThemeData oceanTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFF01579B), // Deep Sea Blue
  colorScheme: ColorScheme.light(
    primary: Color(0xFF01579B),
    secondary: Color(0xFF26A69A), // Aqua Teal
    error: Color(0xFFFF5252),      // Coral Red
    onPrimary: Colors.white,
    onSecondary: Colors.white,
  ),
  scaffoldBackgroundColor: Color(0xFFE1F5FE), // Light Blue-Grey
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF01579B),
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Color(0xFF0D47A1), // Dark Navy
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: Color(0xFF212121), // Dark Grey
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF26A69A), // Aqua Teal
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFF01579B),
    textTheme: ButtonTextTheme.primary,
  ),
);
