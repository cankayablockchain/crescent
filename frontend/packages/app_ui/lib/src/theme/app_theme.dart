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
      colorSchemeSeed: Colors.greenAccent,
      inputDecorationTheme: _inputDecorationTheme,
    );
  }

  /// Default `ColorScheme` for App UI.
  ColorScheme get _colorScheme {
    return const ColorScheme.light();
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

  @override
  ColorScheme get _colorScheme {
    return const ColorScheme.dark();
  }
}
