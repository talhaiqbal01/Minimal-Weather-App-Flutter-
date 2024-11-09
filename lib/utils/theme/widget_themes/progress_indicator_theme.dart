import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Progress Indicator Themes
class TProgressIndicatorTheme {
  TProgressIndicatorTheme._();

  /// Customizable Light Progress Indicator Theme
  static const lightProgressIndicatorTheme = ProgressIndicatorThemeData(
    color: TColors.lightProgressIndicator,
    refreshBackgroundColor: TColors.lightRefreshBackground,
  );

  /// Customizable Dark Progress Indicator Theme
  static const darkProgressIndicatorTheme = ProgressIndicatorThemeData(
    color: TColors.darkProgressIndicator,
    refreshBackgroundColor: TColors.darkRefreshBackground,
  );
}