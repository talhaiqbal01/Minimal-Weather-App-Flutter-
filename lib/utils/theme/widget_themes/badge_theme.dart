import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Badge Themes
class TBadgeTheme {
  TBadgeTheme._(); // To avoid creating instances

  /// Customizable Light Badge Theme
  static BadgeThemeData lightBadgeTheme = BadgeThemeData(
    backgroundColor: TColors.lightIcon,
    alignment: Alignment.topRight,
    textColor: TColors.darkText,
    textStyle: const TextStyle().copyWith(
      color: TColors.darkText,
      fontWeight: FontWeight.normal,
    ),
  );

  /// Customizable Light Badge Theme
  static BadgeThemeData darkBadgeTheme = BadgeThemeData(
    backgroundColor: TColors.darkIcon,
    alignment: Alignment.topRight,
    textColor: TColors.lightText,
    textStyle: const TextStyle().copyWith(
      color: TColors.lightText,
      fontWeight: FontWeight.normal,
    ),
  );
}
