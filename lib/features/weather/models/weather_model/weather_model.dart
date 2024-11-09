/// Model class representing weather data.
class WeatherModel {

  final String cityName;
  final double temperature;
  final String mainCondition;

  /// Constructor for [WeatherModel]
  const WeatherModel({required this.cityName, required this.temperature, required this.mainCondition});

  /// Function to create an empty [WeatherModel].
  static WeatherModel empty() => const WeatherModel(cityName: '', temperature: 0.0, mainCondition: '');

  /// Convert model to [JSON] structure for storing data in firestore
  Map<String, dynamic> toJson() => {
    'CityName': cityName,
    'Temperature': temperature,
    'MainCondition': mainCondition,
  };

  /// Factory method to create a [WeatherModel] from a [JSON] format.
  factory WeatherModel.fromJson(Map<String, dynamic> data) => WeatherModel(
    cityName: data['name'] ?? '',
    temperature: data['main']['temp'].toDouble(),
    mainCondition: data['weather'][0]['main'],
  );
}
