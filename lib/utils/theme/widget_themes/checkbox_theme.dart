import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/// Custom Class for Light & Dark Checkbox Themes
class TCheckboxTheme {
  TCheckboxTheme._(); // To avoid creating instances

  /// Customizable Light Checkbox Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: TColors.lightCheckBox,
        width: TSizes.inputFieldSideWidth,
      ),
      borderRadius: BorderRadius.circular(TSizes.borderRadiusSm),
    ),
    checkColor: WidgetStateProperty.resolveWith(
      (states) =>
          states.contains(WidgetState.selected) ? TColors.white : TColors.black,
    ),
    fillColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? TColors.lightFillCheckBox
          : Colors.transparent,
    ),
  );

  /// Customizable Dark Checkbox Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: TColors.darkCheckBox,
        width: TSizes.inputFieldSideWidth,
      ),
      borderRadius: BorderRadius.circular(TSizes.borderRadiusSm),
    ),
    checkColor: WidgetStateProperty.resolveWith(
          (states) =>
      states.contains(WidgetState.selected) ? TColors.white : TColors.black,
    ),
    fillColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
          ? TColors.darkFillCheckBox
          : Colors.transparent,
    ),
  );
}
