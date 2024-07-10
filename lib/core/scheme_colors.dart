import 'package:flutter/material.dart';

class SchemeColorsApp extends ColorScheme {
  static const Color myBackgroundColor = Color(0xFF202123);
  static const Color myPrimaryColor = Color(0xFF4B82EF);
  static const Color mySecondary = Color(0xFF41AD6C);
  static const Color myColorContainer = Color.fromARGB(255, 24, 24, 24);

  const SchemeColorsApp({
    super.primary = myPrimaryColor,
    super.background = myBackgroundColor,
    super.secondary = mySecondary,
    super.onPrimaryContainer = myColorContainer,
  }) : super(
          brightness: Brightness.dark,
          onPrimary: Colors.purple,
          onBackground: Colors.black,
          error: Colors.red,
          onError: Colors.redAccent,
          onSecondary: Colors.grey,
          onSurface: Colors.green,
          surface: Colors.greenAccent,
        );
}
