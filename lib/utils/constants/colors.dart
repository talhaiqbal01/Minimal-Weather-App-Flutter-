/* -- App Colors -- */

/// This class contains all the App [Colors].

import 'package:flutter/material.dart';

class TColors {
  TColors._(); // To avoid creating instances

  //-- Global Colors
  static const Color primary = Colors.blueAccent;
  static const Color secondary = Colors.blueAccent;
  static const Color tertiary = Colors.lightBlue;

  //-- Background Colors
  static const Color lightBackground = Color(0xfff6f6f6);

  static const Color darkBackground = Color(0xff272727);

  //-- Loading Colors
  static const Color lightLoading = black;

  static const Color darkLoading = white;

  //-- AppBar Colors
  static const lightAppBar = Colors.transparent;
  static const lightStatusAppBar = Colors.transparent;
  static const lightSystemNavigationAppBar = lightBackground;

  static const darkAppBar = Colors.transparent;
  static const darkStatusAppBar = Colors.transparent;
  static const darkSystemNavigationAppBar = darkBackground;

  //-- Color Scheme
  static const Color lightSeedColor = primary;

  static const Color darkSeedColor = primary;

  //-- Text Colors
  static const Color lightText = black;

  static const Color darkText = lightGrey;

  //-- Checkbox Colors
  static const Color lightCheckBox = black;
  static const Color darkCheckBox = white;

  static const Color lightFillCheckBox = primary;
  static const Color darkFillCheckBox = primary;

  //-- Error And Validation Colors
  static const Color error = Color(0xffD32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color info = Colors.blue;

  //-- Disable Colors
  static const Color lightDisable = darkerGrey;

  static const Color darkDisable = darkGrey;

  //-- Indicator Colors
  static const Color lightIndicator = primary;

  static const Color darkIndicator = primary;

  //-- Bottom Sheet Colors
  static const Color lightBottomSheetBackground = lightBackground;

  static const Color darkBottomSheetBackground = darkBackground;

  //-- Drop Down Colors
  static const Color lightMenuBackground = lightBackground;
  static const Color darkMenuBackground = darkBackground;

  //-- Drawer Colors
  static const Color lightDrawerBackground = lightBackground;
  static Color lightDrawerShadow = black.withOpacity(0.1);

  static const Color darkDrawerBackground = darkBackground;
  static Color darkDrawerShadow = white.withOpacity(0.1);

  //-- Dialog Colors
  static const Color lightDialogBackground = lightBackground;

  static const Color darkDialogBackground = darkBackground;

  //-- Icon Colors
  static const Color lightIcon = black;

  static const Color darkIcon = lightGrey;


  //-- Elevated Button Colors
  static const Color lightElevatedButtonForeground = black;
  static const Color lightElevatedButtonBackground = primary;
  static const Color lightDisableElevatedButtonForeground = darkerGrey;
  static Color lightDisableElevatedButtonBackground = darkerGrey.withOpacity(0.1);

  static const Color darkElevatedButtonForeground = white;
  static const Color darkElevatedButtonBackground = primary;
  static const Color darkDisableElevatedButtonForeground = darkerGrey;
  static Color darkDisableElevatedButtonBackground = grey.withOpacity(0.1);


  //-- Outlined Button Colors
  static const Color lightOutlinedButtonForeground = black;
  static const Color lightDisableOutlinedButtonForeground = darkerGrey;

  static const Color darkOutlinedButtonForeground = white;
  static const Color darkDisableOutlinedButtonForeground = darkerGrey;


  //-- Progress Indicator Colors
  static const Color lightProgressIndicator = lightIndicator;
  static const Color lightRefreshBackground = lightBackground;

  static const Color darkProgressIndicator = darkIndicator;
  static const Color darkRefreshBackground = darkBackground;


  //-- List Tile Colors
  static const Color lightListTileBackground = lightBackground;

  static const Color darkListTileBackground = darkBackground;


  //-- Radio Colors
  static const Color lightRadioFill = primary;
  static const Color lightRadioOutline = black;

  static const Color darkRadioFill = primary;
  static const Color darkRadioOutline = white;


  //-- Text Selection Colors
  static const Color lightCursor = black;

  static const Color darkCursor = white;


  //-- Text Button Colors
  static const Color lightTextButton = primary;

  static const Color darkTextButton = primary;


  //-- Slider Colors
  static const Color lightThumbColor = tertiary;
  static const Color lightInactiveTickMarkColor = darkerGrey;
  static const Color lightActiveTickMarkColor = tertiary;
  static const Color lightInactiveTrackColor = darkerGrey;
  static const Color lightActiveTrackColor = tertiary;

  static const Color darkThumbColor = tertiary;
  static const Color darkInactiveTickMarkColor = grey;
  static const Color darkActiveTickMarkColor = tertiary;
  static const Color darkInactiveTrackColor = grey;
  static const Color darkActiveTrackColor = tertiary;


  //-- Floating Action Button Colors
  static const Color lightFloatingActionButtonForeground = white;
  static const Color lightFloatingActionButtonBackground = primary;

  static const Color darkFloatingActionButtonForeground = white;
  static const Color darkFloatingActionButtonBackground = primary;


  //-- TextFormField Colors
  static Color lightTextFieldFilledColor = white;
  static const Color lightPrefixIcon = darkerGrey;
  static const Color lightSuffixIcon = darkerGrey;
  static const Color lightLabel = darkerGrey;
  static const Color lightHint = darkerGrey;
  static Color lightFloatingLabel = lightLabel.withOpacity(0.8);
  static const Color lightTextFieldBorder = darkerGrey;
  static const Color lightTextFieldEnableBorder = darkerGrey;
  static const Color lightTextFieldFocusBorder = black;

  static Color darkTextFieldFilledColor = black;
  static const Color darkPrefixIcon = grey;
  static const Color darkSuffixIcon = grey;
  static const Color darkLabel = grey;
  static const Color darkHint = grey;
  static Color darkFloatingLabel = darkLabel.withOpacity(0.8);
  static const Color darkTextFieldBorder = grey;
  static const Color darkTextFieldEnableBorder = grey;
  static const Color darkTextFieldFocusBorder = white;

  //-- Tab Bar Colors
  static const Color lightTabBarLabel = black;
  static const Color lightTabBarIndicator = primary;
  static const Color lightTabBarUnselectedLabel = black;
  static const Color lightTabBarDivider = Colors.transparent;

  static const Color darkTabBarLabel = white;
  static const Color darkTabBarIndicator = primary;
  static const Color darkTabBarUnselectedLabel = darkGrey;
  static const Color darkTabBarDivider = Colors.transparent;


  //-- Navigation Bar Colors
  static const Color lightNavigationBarBackground = lightBackground;
  static const Color lightNavigationBarSurfaceTint = black;
  static Color lightNavigationBarIndicator = black.withOpacity(0.1);

  static const Color darkNavigationBarBackground = darkBackground;
  static const Color darkNavigationBarSurfaceTint = white;
  static Color darkNavigationBarIndicator = white.withOpacity(0.1);


  //-- Social Media Button Colors
  static const Color lightSocialMediaOutline = black;

  static const Color darkSocialMediaOutline = white;


  //-- Divider Colors
  static const Color lightDivider = darkGrey;

  static const Color darkDivider = grey;


  //-- Drop Down Colors
  static Color lightDropDownColor = lightBackground;

  static Color darkDropDownColor = darkBackground;


  //-- Shimmer Colors
  static Color lightShimmerBaseColor = darkGrey;
  static Color lightShimmerHighlightColor = softGrey;

  static Color darkShimmerBaseColor = grey;
  static Color darkShimmerHighlightColor = softGrey;


  //-- Pop-up Colors
  static Color lightPopupMenuBackgroundColor = lightBackground;

  static Color darkPopupMenuBackgroundColor = darkBackground;


  //-- Neutral Shades
  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);

  static const Color grey = Color(0xffe0e0e0);
  static const Color softGrey = Color(0xfff4f4f4);
  static const Color lightGrey = Color(0xfff9f9F9);
  static const Color white = Color(0xffffffff);
}
