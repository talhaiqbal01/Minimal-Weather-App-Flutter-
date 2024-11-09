import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Text Selection Themes
class TTextSelectionTheme {
  TTextSelectionTheme._(); // To avoid creating instances

  /// Customizable Light Text Selection Theme
  static const lightTextSelectionTheme = TextSelectionThemeData(
    cursorColor: TColors.lightCursor,
  );

  /// Customizable Dark Text Selection Theme
  static const darkTextSelectionTheme = TextSelectionThemeData(
    cursorColor: TColors.darkCursor,
  );
}
