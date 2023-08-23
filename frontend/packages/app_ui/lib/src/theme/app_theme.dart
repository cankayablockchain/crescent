import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// The Default App [ThemeData].
class AppTheme {
  /// {@macro app_theme}
  const AppTheme();

  /// Default `ThemeData` for App UI.
  ThemeData get themeData {
    return ThemeData(
      useMaterial3: true,
      textTheme: _textTheme,
      colorSchemeSeed: Colors.blue,
      inputDecorationTheme: _inputDecorationTheme,
    );
  }

  /// Default `TextTheme` for App UI.
  TextTheme get _textTheme {
    return GoogleFonts.poppinsTextTheme();
  }

  /// Default `InputDecorationTheme` for App UI.
  InputDecorationTheme get _inputDecorationTheme {
    return const InputDecorationTheme(
      isDense: true,
      filled: true,
    );
  }
}

/// Dark Mode App [ThemeData].
class AppDarkTheme extends AppTheme {
  const AppDarkTheme();
}
