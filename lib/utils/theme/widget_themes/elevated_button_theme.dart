import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/// Custom Class for Light & Dark Elevated Button Themes
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); //To avoid creating instances

  /// Customizable Light Elevated Button Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.lightElevatedButtonForeground,
      backgroundColor: TColors.lightElevatedButtonBackground,
      disabledForegroundColor: TColors.lightDisableElevatedButtonForeground,
      disabledBackgroundColor: TColors.lightDisableElevatedButtonBackground,
      textStyle: const TextStyle(
        fontSize: TSizes.buttonTextSize,
        color: TColors.lightText,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(TSizes.buttonRadius),
      ),
    ),
  );

  /// Customizable Dark Elevated Button Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.darkElevatedButtonForeground,
      backgroundColor: TColors.darkElevatedButtonBackground,
      disabledForegroundColor: TColors.darkDisableElevatedButtonForeground,
      disabledBackgroundColor: TColors.darkDisableElevatedButtonBackground,
      textStyle: const TextStyle(
        fontSize: TSizes.buttonTextSize,
        color: TColors.darkText,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(TSizes.buttonRadius),
      ),
    ),
  );
}
