import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/// Custom Class for Light & Dark Floating Action Button Themes
class TFloatingActionButtonTheme {
  TFloatingActionButtonTheme._(); // To avoid creating instances

  /// Customizable Light Floating Action Button Theme
  static FloatingActionButtonThemeData lightFloatingActionButtonTheme =
      const FloatingActionButtonThemeData(
    foregroundColor: TColors.lightFloatingActionButtonForeground,
    backgroundColor: TColors.lightFloatingActionButtonBackground,
    iconSize: TSizes.iconMd,
  );

  /// Customizable Dark Floating Action Button Theme
  static FloatingActionButtonThemeData darkFloatingActionButtonTheme =
      const FloatingActionButtonThemeData(
    foregroundColor: TColors.darkFloatingActionButtonForeground,
    backgroundColor: TColors.darkFloatingActionButtonBackground,
    iconSize: TSizes.iconMd,
  );
}
