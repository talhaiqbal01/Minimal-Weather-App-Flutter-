import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Radio Themes
class TRadioTheme {
  TRadioTheme._(); // To avoid creating instances

  /// Customizable Light Radio Theme
  static RadioThemeData lightRadioTheme = RadioThemeData(
    fillColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return TColors.lightRadioFill;
      }
      return TColors.lightRadioOutline;
    }),
  );

  /// Customizable Light Radio Theme
  static RadioThemeData darkRadioTheme = RadioThemeData(
    fillColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return TColors.darkRadioFill;
      }
      return TColors.darkRadioOutline;
    }),
  );
}