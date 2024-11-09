import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Divider Themes
class TDividerTheme {
  TDividerTheme._(); // To avoid creating instances

  /// Customizable Light Divider Theme
  static const lightDividerTheme = DividerThemeData(
    color: TColors.lightDivider,
  );

  /// Customizable Dark Divider Theme
  static const darkDividerTheme = DividerThemeData(
    color: TColors.darkDivider,
  );
}
