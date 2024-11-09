import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Switch Themes
class TSwitchTheme {
  TSwitchTheme._(); // To avoid creating instances

  /// Customizable Light Switch Theme
  static const lightSwitchTheme = SwitchThemeData();

  /// Customizable Dark Switch Theme
  static const darkIconTheme = IconThemeData(color: TColors.darkIcon);
}