import 'package:flutter/material.dart';
import 'package:weather_app/utils/theme/theme.dart';
import 'package:get/get.dart';
import 'bindings/general_bindings/general_bindings.dart';
import 'common/screens/loading_screen/loading_screen.dart';
import 'localizations/local_strings.dart';

/// This the main app class [WeatherApp].
class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      /// Translations
      translations: LocalStrings(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),

      /// Theming
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

      /// Hide banner in debug mode
      debugShowCheckedModeBanner: false,

      /// Bindings on start of the app
      initialBinding: GeneralBindings(),

      /// Default transition during navigation
      defaultTransition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),

      /// Home screen
      home: const LoadingScreen(),
    );
  }
}
