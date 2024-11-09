import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Drawer Themes
class TDrawerTheme {
  TDrawerTheme._(); // To avoid creating instances

  /// Customizable Light Drawer Theme
  static DrawerThemeData lightDrawerTheme = DrawerThemeData(
    elevation: 0.0,
    backgroundColor: TColors.lightDrawerBackground,
    shadowColor: TColors.lightDrawerShadow,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    endShape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
  );

  /// Customizable Dark Drawer Theme
  static DrawerThemeData darkDrawerTheme = DrawerThemeData(
    elevation: 0.0,
    backgroundColor: TColors.darkDrawerBackground,
    shadowColor: TColors.darkDrawerShadow,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    endShape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
  );
}
