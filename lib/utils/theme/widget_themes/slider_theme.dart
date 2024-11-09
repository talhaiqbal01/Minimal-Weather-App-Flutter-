import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Slider Themes
class TSliderTheme {
  TSliderTheme._(); // To avoid creating instances

  /// Customizable Light Slider Theme
  static const lightSliderTheme = SliderThemeData(
    inactiveTickMarkColor: TColors.lightInactiveTickMarkColor,
    activeTickMarkColor: TColors.lightActiveTickMarkColor,
    inactiveTrackColor: TColors.lightInactiveTrackColor,
    activeTrackColor: TColors.lightActiveTrackColor,
    thumbColor: TColors.lightThumbColor,
  );

  /// Customizable Light Slider Theme
  static const darkSliderTheme = SliderThemeData(
    inactiveTickMarkColor: TColors.lightInactiveTickMarkColor,
    activeTickMarkColor: TColors.lightActiveTickMarkColor,
    inactiveTrackColor: TColors.lightInactiveTrackColor,
    activeTrackColor: TColors.lightActiveTrackColor,
    thumbColor: TColors.darkThumbColor,
  );
}
