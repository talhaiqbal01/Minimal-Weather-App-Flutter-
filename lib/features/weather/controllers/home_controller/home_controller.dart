/// Controller for [HomeScreen]

import 'package:get/get.dart';
import 'package:weather_app/data/repositories/weather_repository/weather_repository.dart';
import 'package:weather_app/features/weather/models/weather_model/weather_model.dart';
import '../../../../utils/logging/logger.dart';


class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  /*------------------------------------Variables------------------------------------*/
  /// Repository instances
  final weatherRepo = Get.put(WeatherRepository());

  /// Weather values
  var currentCity = ''.obs;
  Rx<WeatherModel> currentWeather = WeatherModel.empty().obs;

  /// Bool values for loading and error
  var isLoading = false.obs;
  var isError = false.obs;

  /*------------------------------------ On init and close ------------------------------------*/

  @override
  void onInit() {
    fetchAndAssign();
    super.onInit();
  }

  @override
  void onClose() {
    onScreenClose();
    super.onClose();
  }

  /*------------------------------------Functions------------------------------------*/

  /// Function to fetch and assign all values
  void fetchAndAssign() async {
    isLoading.value = true;
    try {
      currentCity.value = await weatherRepo.getUserCurrentCity();

      currentWeather.value = await weatherRepo.getUserCityWeather(currentCity.value);

      isError.value = false;

    } catch (e) {
      isError.value = true;
      TLoggerHelper.error("Error during fetch and assign: $e");
    } finally {
      isLoading.value = false;
    }
  }

  /// Function to call on screen close
  void onScreenClose() async {
  }


  /// Function to get animation based on main condition
  String getWeatherAnimation() => weatherRepo.getWeatherAnimationPath(currentWeather.value.mainCondition);

}
