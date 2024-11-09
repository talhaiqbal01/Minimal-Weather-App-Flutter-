import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/common/screens/loading_screen/loading_screen.dart';
import 'package:weather_app/common/widgets/elevated_button/elevated_button.dart';
import 'package:weather_app/utils/constants/errors.dart';
import 'package:weather_app/utils/constants/sizes.dart';
import 'package:weather_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/utils/helpers/helper_functions.dart';
import '../../controllers/home_controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final controller = Get.put(HomeController());
    THelperFunctions.setSystemUIOverlay(context);

    return Obx(
      () => controller.isLoading.value
          ?
      /// Loading Screen
      const LoadingScreen()
          :
      controller.isError.value
          ?
      /// Error Screen
      Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(TSizes.md),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(TErrors.unknownError.tr, style: textTheme.headlineLarge),

                const Gap(TSizes.spaceBtwSections),

                TElevatedButton(onPress: controller.fetchAndAssign, text: TTexts.tryAgain.tr),
              ],
            ),
          ),
        ),
      )
          :
      /// Main Screen
      Scaffold(
        appBar: AppBar(title: Text(TTexts.appName.tr, style: textTheme.titleLarge)),

        body: Obx(
          () => Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LottieBuilder.asset(controller.getWeatherAnimation(), height: TSizes.imageMd, width: TSizes.imageMd),

                  const Gap(TSizes.spaceBtwSections),

                  Text(controller.currentWeather.value.cityName, style: textTheme.displayMedium),

                  const Gap(TSizes.spaceBtwItems),

                  Text('${controller.currentWeather.value.temperature.round()} °C', style: textTheme.headlineSmall),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
