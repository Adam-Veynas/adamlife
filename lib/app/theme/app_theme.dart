import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static const Color primary = Colors.blue;
  static const Color secondary = Color(0xFF9E9E9E);
  static const Color background = Color(0xFFF5F5F5);
  static const Color success = Colors.green;
  static const Color warning = Colors.orange;
  static const Color error = Colors.red;

  static ThemeData get light {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: primary),
      scaffoldBackgroundColor: background,
      useMaterial3: true,
    );
  }
}
