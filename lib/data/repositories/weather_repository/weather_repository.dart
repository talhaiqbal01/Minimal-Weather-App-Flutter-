import 'dart:convert';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/features/weather/models/weather_model/weather_model.dart';
import 'package:weather_app/utils/constants/animations.dart';
import 'package:weather_app/utils/constants/api.dart';
import 'package:weather_app/utils/logging/logger.dart';

/// Repository related to weather related functions
class WeatherRepository extends GetxController {
  static WeatherRepository get instance => Get.find();

  /*------------------------------------Variables------------------------------------*/

  /*------------------------------------ On Ready ------------------------------------*/

  /*------------------------------------ Functions ------------------------------------*/

  /// Function to get weather based on user's city and return data as [WeatherModel] value
  Future<WeatherModel> getUserCityWeather(String city) async {
    try {

      final response = await http.get(Uri.parse(TApi.weatherAPIEndPoint(city)));

      if (response.statusCode == 200) {
        return WeatherModel.fromJson(jsonDecode(response.body));
      } else {
        return WeatherModel.empty();
      }
    } catch (e) {
      TLoggerHelper.error('Error getting user\'s city weather - $e');
      return WeatherModel.empty();
    }
  }


  /// Function to get user's current city using user's device
  Future<String> getUserCurrentCity() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    Position position = await Geolocator.getCurrentPosition(locationSettings: const LocationSettings(accuracy: LocationAccuracy.best));

    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);

    String? city = placemarks[0].locality;

    return city ?? '';
  }


  /// Function to get animation path using weather main condition
  String getWeatherAnimationPath(String mainCondition) {
    if (mainCondition.isEmpty) {
      return TAnimations.sunny; // Default is sunny animation
    } else {
      switch (mainCondition.toLowerCase()) {
        case 'clouds':
          return TAnimations.cloud;
        case 'clear':
          return TAnimations.sunny;
        case 'rain':
        case 'drizzle':
        case 'shower rain':
          return TAnimations.cloudSunnyRaining;
        case 'thunderstorm':
          return TAnimations.cloudStormingRaining;
        case 'snow':
          return TAnimations.snowing;
        case 'fog':
        case 'mist':
        case 'smoke':
        case 'haze':
        case 'dust':
          return TAnimations.cloudFog;
        default:
          return TAnimations.sunny; // Fallback to sunny animation
      }
    }
  }


}