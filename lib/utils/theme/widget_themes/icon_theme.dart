import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Icons Themes
class TIconTheme {
  TIconTheme._(); // To avoid creating instances

  /// Customizable Light Icon Theme
  static const lightIconTheme = IconThemeData(color: TColors.lightIcon);

  /// Customizable Dark Icon Theme
  static const darkIconTheme = IconThemeData(color: TColors.darkIcon);
}