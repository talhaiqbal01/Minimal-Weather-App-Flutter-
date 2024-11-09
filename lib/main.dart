import 'package:weather_app/data/repositories/local_repository/local_repository.dart';
import 'package:weather_app/weather_app.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/utils/device/device_utility.dart';
import 'package:weather_app/utils/logging/logger.dart';
import 'package:get/get.dart';

void main() async {
  ///--- Ensuring initialization of widgets binding for rendering and interactions
  WidgetsFlutterBinding.ensureInitialized();
  TLoggerHelper.info('Widgets flutter binding initialized.');

  ///--- Setting portrait mode of the app
  TDeviceUtils.setPreferredOrientations();
  TLoggerHelper.info('App set to portrait mode.');


  ///--- Initializing Local Repository
  Get.put(LocalRepository());
  TLoggerHelper.info('Local repository initialized.');

  ///--- Running the main app
  TLoggerHelper.info('Running main app.');
  runApp(const WeatherApp());
}
