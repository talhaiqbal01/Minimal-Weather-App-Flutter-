import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

/// Utility class for device-related operations
class TDeviceUtils {
  TDeviceUtils._(); //-- To avoid creating instances

  /// Function to hide keyboard manually
  static void hideKeyboard(BuildContext context) => FocusScope.of(context).requestFocus(FocusNode());

  /// Function to set a specific color to [StatusBar]
  static Future<void> setStatusBarColor(Color color) async => SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: color));

  /// Function to check if the app is in horizontal view
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  /// Function to check if the app is in vertical view
  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  /// Function to set the app to full screen
  static void setFullScreen(bool enable) => SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);

  /// Function to get device's screen height
  static double screenHeight() => MediaQuery.of(Get.context!).size.height;

  /// Function to get device's screen width
  static double screenWidth() => MediaQuery.of(Get.context!).size.width;

  /// Function to get device's pixel ratio
  static double getPixelRatio() => MediaQuery.of(Get.context!).devicePixelRatio;

  /// Function to get device's [StatusBar] height
  static double getStatusBarHeight() => MediaQuery.of(Get.context!).padding.top;

  /// Function to get app bottom [NavigationBar] height
  static double getBottomNavigationBarHeight() => kBottomNavigationBarHeight;

  /// Function to get app's [AppBar] height
  static double getAppBarHeight() => kToolbarHeight;

  /// Function to get device's keyboard height
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  /// Function to check if the keyboard is visible or not
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  /// Function to set screen orientation to specific options
  static Future<void> setPreferredOrientations() => SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  /// Function to check the app's running platform
  static Future<bool> isPhysicalDevice() async => defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;

  /// Function to vibrate the device
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }


  /// Function to hide the [StatusBar]
  static void hideStatusBar() => SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  /// Function to show the [StatusBar]
  static void showStatusBar() => SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);


  /// Function to check if internet connection available or not
  static Future<bool> hasInternetConnection() async {
    final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult.contains(ConnectivityResult.mobile) || connectivityResult.contains(ConnectivityResult.wifi)) {
      return true;
    } else {
      return false;
    }
  }

  /// Function to check if the device is [iOS].
  static bool isIOS() => Platform.isIOS;

  /// Function to check if the device is [Android].
  static bool isAndroid() => Platform.isAndroid;
}
