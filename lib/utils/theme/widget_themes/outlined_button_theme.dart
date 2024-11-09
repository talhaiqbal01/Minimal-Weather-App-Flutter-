import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/// Custom Class for Light & Dark Outlined Button Themes
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); //To avoid creating instances

  /// Customizable Light Outlined Button Theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.lightOutlinedButtonForeground,
      disabledForegroundColor: TColors.lightDisableOutlinedButtonForeground,
      side: const BorderSide(
        color: TColors.lightOutlinedButtonForeground,
        width: TSizes.buttonSideWidth,
      ),
      textStyle: const TextStyle(
        fontSize: TSizes.buttonTextSize,
        color: TColors.lightText,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(TSizes.buttonRadius),
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.darkOutlinedButtonForeground,
      side: const BorderSide(
        color: TColors.darkOutlinedButtonForeground,
        width: TSizes.buttonSideWidth,
      ),
      textStyle: const TextStyle(
        fontSize: TSizes.buttonTextSize,
        color: TColors.darkText,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(TSizes.buttonRadius),
      ),
    ),
  );
}
