import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/// Custom Class for Light & Dark Dialog Themes
class TDialogTheme {
  TDialogTheme._(); // To avoid creating instances

  // Customizable Light Dialog Theme
  static DialogTheme lightDialogTheme = DialogTheme(
    elevation: 0.0,
    backgroundColor: TColors.lightDialogBackground,
    iconColor: TColors.lightIcon,
    titleTextStyle: const TextStyle().copyWith(
      color: TColors.lightText,
      fontSize: TSizes.fontSizeLg,
      fontWeight: FontWeight.w700,
    ),
    contentTextStyle: const TextStyle().copyWith(
      color: TColors.lightText,
      fontSize: TSizes.fontSizeSm,
      fontWeight: FontWeight.normal,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
    ),
  );

  // Customizable Dark Dialog Theme
  static DialogTheme darkDialogTheme = DialogTheme(
    elevation: 0.0,
    backgroundColor: TColors.darkDialogBackground,
    iconColor: TColors.lightIcon,
    titleTextStyle: const TextStyle().copyWith(
      color: TColors.darkText,
      fontSize: TSizes.fontSizeLg,
      fontWeight: FontWeight.w700,
    ),
    contentTextStyle: const TextStyle().copyWith(
      color: TColors.darkText,
      fontSize: TSizes.fontSizeSm,
      fontWeight: FontWeight.normal,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
    ),
  );
}