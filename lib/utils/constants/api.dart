/* -- App API -- */

/// This class contains all the API in [String] formats.
class TApi {
  TApi._(); // To avoid creating instances

  static const String weatherBaseUrl = 'https://api.openweathermap.org/data/2.5/weather';
  static const String weatherAPIKey = 'YOUR_API_KEY_HERE';

  static String weatherAPIEndPoint(String cityName) => '${TApi.weatherBaseUrl}?q=$cityName&appid=${TApi.weatherAPIKey}&units=metric';

}
