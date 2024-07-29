import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
    primaryColor: Colors.green,
    hoverColor: Colors.transparent,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'consolas',
        fontSize: 32.0,
        fontWeight: FontWeight.w700,
        color: Color(0XFFeeeeee),
      ),
      displayMedium: TextStyle(
        fontFamily: 'consolas',
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Color(0XFFeeeeee),
      ),
      titleLarge: TextStyle(
        fontFamily: 'consolas',
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Color(0XFFeeeeee),
      ),
      labelSmall: TextStyle(
        fontFamily: 'consolas',
        color: Color(0XFFeeeeee),
      ),
      bodyLarge: TextStyle(
        fontFamily: 'consolas',
        fontSize: 16.0,
        color: Color(0XFFeeeeee),
      ),
      bodyMedium: TextStyle(
        fontFamily: 'consolas',
        fontSize: 14.0,
        color: Color(0XFFeeeeee),
      ),
    ),
  );
}
