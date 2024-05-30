import 'package:flutter/cupertino.dart';
import 'package:open_weather_app/views/splash_view.dart';
import 'package:open_weather_app/views/open_weather_view.dart';

class AppRoutes{
  static const splashView = '/splash-view';
  static const openWeatherView = '/open-weather-view';

  static Map<String, Widget Function(BuildContext)> appRoutes(BuildContext context) {
    return {
      splashView : (context) {
        return SplashView();
      } ,
      openWeatherView : (context) => OpenWeatherView()
    };
  }
}