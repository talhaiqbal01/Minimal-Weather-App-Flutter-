import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/// Custom Class for Light & Dark Text Form Field Themes
class TTextFormFieldTheme {
  TTextFormFieldTheme._(); // To avoid creating instances

  /// Customizable Light Text Form Field Theme
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    filled: false,
    fillColor: TColors.lightTextFieldFilledColor,
    errorMaxLines: 3,
    iconColor: TColors.lightIcon,
    prefixIconColor: TColors.lightPrefixIcon,
    suffixIconColor: TColors.lightSuffixIcon,
    labelStyle: const TextStyle(fontSize: TSizes.fontSizeMd, color: TColors.lightLabel),
    hintStyle: const TextStyle(fontSize: TSizes.fontSizeMd, color: TColors.lightLabel),
    helperStyle: const TextStyle(fontSize: TSizes.fontSizeSm, color: TColors.lightLabel),
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle(color: TColors.lightFloatingLabel),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: TSizes.inputFieldSideWidth, color: TColors.lightTextFieldBorder),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: TSizes.inputFieldSideWidth, color: TColors.lightTextFieldEnableBorder),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: TSizes.inputFieldSelectedSideWidth, color: TColors.lightTextFieldFocusBorder),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: TSizes.inputFieldSelectedSideWidth, color: TColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: TSizes.inputFieldSelectedSideWidth, color: TColors.error),
    ),
  );

  /// Customizable Dark Text Form Field Theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    fillColor: TColors.darkTextFieldFilledColor,
    errorMaxLines: 3,
    iconColor: TColors.darkIcon,
    prefixIconColor: TColors.darkPrefixIcon,
    suffixIconColor: TColors.darkSuffixIcon,
    labelStyle: const TextStyle(fontSize: TSizes.fontSizeMd, color: TColors.darkLabel),
    hintStyle: const TextStyle(fontSize: TSizes.fontSizeSm, color: TColors.darkHint),
    helperStyle: const TextStyle(fontSize: TSizes.fontSizeSm, color: TColors.darkLabel),
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle(color: TColors.darkFloatingLabel),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: TSizes.inputFieldSideWidth, color: TColors.darkTextFieldBorder),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: TSizes.inputFieldSideWidth, color: TColors.darkTextFieldEnableBorder),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: TSizes.inputFieldSelectedSideWidth, color: TColors.darkTextFieldFocusBorder),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: TSizes.inputFieldSelectedSideWidth, color: TColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
      borderSide: const BorderSide(width: TSizes.inputFieldSelectedSideWidth, color: TColors.error),
    ),
  );
}
