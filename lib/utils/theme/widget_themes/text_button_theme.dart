import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Text Button Themes
class TTextButtonTheme {
  TTextButtonTheme._(); // To avoid creating instances

  /// Customizable Light Text Button Theme
  static const lightTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll<TextStyle>(
        TextStyle(
          color: TColors.lightTextButton,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );

  /// Customizable Dark Text Button Theme
  static const darkTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll<TextStyle>(
        TextStyle(
          color: TColors.darkTextButton,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}