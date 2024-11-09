import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/// Custom Class for Light & Dark Bottom Navigation Bar Themes
class TBottomNavigationBarTheme {
  TBottomNavigationBarTheme._(); // To avoid creating instances

  /// Customizable Light Bottom Navigation Bar Theme
  static BottomNavigationBarThemeData lightBottomNavigationBarTheme = const BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: TColors.lightNavigationBarBackground,
    selectedIconTheme: IconThemeData(
      size: TSizes.iconMd,
      color: TColors.lightIcon,
    ),
    unselectedIconTheme: IconThemeData(
      size: TSizes.iconMd,
      color: TColors.lightIcon,
    ),
    type: BottomNavigationBarType.fixed,
  );

  /// Customizable Dark Bottom Navigation Bar Theme
  static BottomNavigationBarThemeData darkBottomNavigationBarTheme = const BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: TColors.darkNavigationBarBackground,
    selectedIconTheme: IconThemeData(
      size: TSizes.iconMd,
      color: TColors.darkIcon,
    ),
    unselectedIconTheme: IconThemeData(
      size: TSizes.iconMd,
      color: TColors.darkIcon,
    ),
    type: BottomNavigationBarType.fixed,
  );
}
