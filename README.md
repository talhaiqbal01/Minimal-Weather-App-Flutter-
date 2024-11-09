# Minimal Weather App 🌤️

This is a simple weather application developed using Flutter. It uses the OpenWeatherMap API to fetch real-time weather data and displays animated icons to represent different weather conditions. The app also utilizes geolocation to automatically detect the user’s current city.

## Features 📱

- **Real-Time Weather Display**: Shows the current temperature, weather condition, and city name.
- **Weather Animations**: Displays animations (powered by Lottie) to visually represent different weather conditions such as clouds, rain, thunderstorm, fog, and more.
- **Automatic Location Detection**: Uses device geolocation to detect the user’s current city.
- **Error Handling**: Displays appropriate error messages and a retry button if there’s an issue fetching data.

## Installation 📲

1. Clone this repository:
    ```bash
    git clone https://github.com/talhaiqbal01/Minimal-Weather-App-Flutter-.git
    ```
2. Navigate into the project directory:
    ```bash
    cd weather_app
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Run the app on an emulator or a connected device:
    ```bash
    flutter run
    ```

## Configuration ⚙️

1. Obtain an API key from [OpenWeatherMap](https://home.openweathermap.org/users/sign_up).
2. In `lib/utils/constants/api.dart`, replace the placeholder API key with your OpenWeatherMap API key:
    ```dart
    static const String weatherAPIKey = 'YOUR_API_KEY_HERE';
    ```

## Code Overview 🧩

- **`HomeScreen`**: The main screen displaying weather information and animations.
- **`HomeController`**: Manages fetching weather data, updating the UI state, and error handling.
- **`WeatherRepository`**: Contains functions to get the weather data from OpenWeatherMap and handle geolocation for city detection.
- **`getWeatherAnimationPath`**: Determines the correct Lottie animation based on the weather condition.

## Dependencies 📦

- **Lottie**: For displaying animated icons.
- **GetX**: For state management and dependency injection.
- **Geolocator**: To obtain the user’s location.
- **HTTP**: For making API requests to OpenWeatherMap.
