import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/utils/constants/colors.dart';
import 'package:get/get.dart';

/// Helper class for app-related operations
class THelperFunctions {
  THelperFunctions._(); //-- To avoid creating instances

  /// Function to get [Color] based on a [String] value
  static Color? getColor(String value) {
    /// Define your product specific colors here and it will match the attribute colors and show specific 🟠🟡🟢🔵🟣🟤

    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.deepOrange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else {
      return null;
    }
  }


  /// Function to show a [SnackBar]
  static void showSnackBar(String message) => ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(content: Text(message)));

  /// Function to truncate a [Text]
  static String truncateText(String text, int maxLength) => text.length <= maxLength ? text : '${text.substring(0, maxLength)}...';

  /// Function to check if the app is in dark mode or not
  static bool isDarkMode(BuildContext context) => Theme.of(context).brightness == Brightness.light;

  /// Function to remove duplicates from a [List]
  static List<T> removeDuplicates<T>(List<T> list) => list.toSet().toList();

  /// Function to set system UI to background colors
  static void setSystemUIOverlay(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);

    return SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: isDark ? Brightness.light : Brightness.dark,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: isDark ? TColors.darkSystemNavigationAppBar : TColors.lightSystemNavigationAppBar,
        systemNavigationBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      ),
    );
  }

  /// Function to set system UI to specific color
  static void setSpecificSystemUIOverlay(BuildContext context, Color color) {
    bool isDark = THelperFunctions.isDarkMode(context);

    return SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: isDark ? Brightness.light : Brightness.dark,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: color,
        systemNavigationBarIconBrightness:
        isDark ? Brightness.light : Brightness.dark,
      ),
    );
  }

  /// Function to set system UI to specific colors based on theme
  static void setSpecificThemedSystemUIOverlay(BuildContext context, Color lightColor, Color darkColor) {
    bool isDark = THelperFunctions.isDarkMode(context);

    return SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: isDark ? Brightness.light : Brightness.dark,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: isDark ? darkColor : lightColor,
        systemNavigationBarIconBrightness:
        isDark ? Brightness.light : Brightness.dark,
      ),
    );
  }

  /// Function to turn a loading [RxBool] variable to false
  static void stopLoading(RxBool variable) async => Future.delayed(const Duration(seconds: 2), () => variable.value = false);

  /// Function to wrap [Widgets] into a [List] of [Widgets]
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }

}
