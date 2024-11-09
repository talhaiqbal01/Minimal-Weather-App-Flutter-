import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/// Custom Class for Light & Dark AppBar Themes
class TAppBarTheme {
  TAppBarTheme._(); // To avoid creating instances

  /// Customizable Light AppBar Theme
  static const lightAppBarTheme = AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      systemNavigationBarContrastEnforced: true,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: TColors.lightStatusAppBar,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: TColors.lightSystemNavigationAppBar,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 1,
    backgroundColor: TColors.lightAppBar,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: TColors.black,
      size: TSizes.iconMd,
    ),
    actionsIconTheme: IconThemeData(
      color: TColors.black,
      size: TSizes.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: TSizes.appBarText,
      fontWeight: FontWeight.w600,
      color: TColors.black,
    ),
  );

  /// Customizable Dark AppBar Theme
  static const darkAppBarTheme = AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      systemNavigationBarContrastEnforced: true,
      statusBarIconBrightness: Brightness.light,
      statusBarColor: TColors.darkStatusAppBar,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: TColors.darkSystemNavigationAppBar,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 1,
    backgroundColor: TColors.darkAppBar,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: TColors.white,
      size: TSizes.iconMd,
    ),
    actionsIconTheme: IconThemeData(
      color: TColors.white,
      size: TSizes.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: TSizes.appBarText,
      fontWeight: FontWeight.w600,
      color: TColors.white,
    ),
  );
}
