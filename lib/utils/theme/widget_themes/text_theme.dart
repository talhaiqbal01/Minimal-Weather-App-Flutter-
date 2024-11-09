import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/typography.dart';

/// Custom Class for Light & Dark Text Themes
class TTextTheme {
  TTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: const TextStyle().copyWith(fontSize: TTypography.displayLarge, fontWeight: FontWeight.w900, color: TColors.lightText),
    displayMedium: const TextStyle().copyWith(fontSize: TTypography.displayMedium, fontWeight: FontWeight.w900, color: TColors.lightText),
    displaySmall: const TextStyle().copyWith(fontSize: TTypography.displaySmall, fontWeight: FontWeight.w900, color: TColors.lightText),
    headlineLarge: const TextStyle().copyWith(fontSize: TTypography.headlineLarge, fontWeight: FontWeight.w900, color: TColors.lightText),
    headlineMedium: const TextStyle().copyWith(fontSize: TTypography.headlineMedium, fontWeight: FontWeight.w800, color: TColors.lightText),
    headlineSmall: const TextStyle().copyWith(fontSize: TTypography.headlineSmall, fontWeight: FontWeight.w800, color: TColors.lightText),
    titleLarge: const TextStyle().copyWith(fontSize: TTypography.titleLarge, fontWeight: FontWeight.w900, color: TColors.lightText),
    titleMedium: const TextStyle().copyWith(fontSize: TTypography.titleMedium, fontWeight: FontWeight.w600, color: TColors.lightText),
    titleSmall: const TextStyle().copyWith(fontSize: TTypography.titleSmall, fontWeight: FontWeight.w400, color: TColors.lightText),
    bodyLarge: const TextStyle().copyWith(fontSize: TTypography.bodyLarge, fontWeight: FontWeight.w900, color: TColors.lightText),
    bodyMedium: const TextStyle().copyWith(fontSize: TTypography.bodyMedium, fontWeight: FontWeight.w700, color: TColors.lightText),
    bodySmall: const TextStyle().copyWith(fontSize: TTypography.bodySmall, fontWeight: FontWeight.w400, color: TColors.lightText),
    labelLarge: const TextStyle().copyWith(fontSize: TTypography.labelLarge, fontWeight: FontWeight.w900, color: TColors.lightText),
    labelMedium: const TextStyle().copyWith(fontSize: TTypography.labelMedium, fontWeight: FontWeight.w700, color: TColors.lightText),
    labelSmall: const TextStyle().copyWith(fontSize: TTypography.labelSmall, fontWeight: FontWeight.normal, color: TColors.lightText),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: const TextStyle().copyWith(fontSize: TTypography.displayLarge, fontWeight: FontWeight.w900, color: TColors.darkText),
    displayMedium: const TextStyle().copyWith(fontSize: TTypography.displayMedium, fontWeight: FontWeight.w900, color: TColors.darkText),
    displaySmall: const TextStyle().copyWith(fontSize: TTypography.displaySmall, fontWeight: FontWeight.w900, color: TColors.darkText),
    headlineLarge: const TextStyle().copyWith(fontSize: TTypography.headlineLarge, fontWeight: FontWeight.w900, color: TColors.darkText),
    headlineMedium: const TextStyle().copyWith(fontSize: TTypography.headlineMedium, fontWeight: FontWeight.w800, color: TColors.darkText),
    headlineSmall: const TextStyle().copyWith(fontSize: TTypography.headlineSmall, fontWeight: FontWeight.w800, color: TColors.darkText),
    titleLarge: const TextStyle().copyWith(fontSize: TTypography.titleLarge, fontWeight: FontWeight.w900, color: TColors.darkText),
    titleMedium: const TextStyle().copyWith(fontSize: TTypography.titleMedium, fontWeight: FontWeight.w600, color: TColors.darkText),
    titleSmall: const TextStyle().copyWith(fontSize: TTypography.titleSmall, fontWeight: FontWeight.w400, color: TColors.darkText),
    bodyLarge: const TextStyle().copyWith(fontSize: TTypography.bodyLarge, fontWeight: FontWeight.w900, color: TColors.darkText),
    bodyMedium: const TextStyle().copyWith(fontSize: TTypography.bodyMedium, fontWeight: FontWeight.w700, color: TColors.darkText),
    bodySmall: const TextStyle().copyWith(fontSize: TTypography.bodySmall, fontWeight: FontWeight.w400, color: TColors.darkText),
    labelLarge: const TextStyle().copyWith(fontSize: TTypography.labelLarge, fontWeight: FontWeight.w900, color: TColors.darkText),
    labelMedium: const TextStyle().copyWith(fontSize: TTypography.labelMedium, fontWeight: FontWeight.w700, color: TColors.darkText),
    labelSmall: const TextStyle().copyWith(fontSize: TTypography.labelSmall, fontWeight: FontWeight.normal, color: TColors.darkText),
  );
}