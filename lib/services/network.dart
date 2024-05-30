import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:open_weather_app/model/Weather_model.dart';
import 'package:open_weather_app/services/app_url.dart';
import 'package:open_weather_app/services/location.dart';
import 'package:open_weather_app/services/weather_data.dart';

class Network{
  Location location = Location();
  WeatherData weatherData = WeatherData();

  Future<WeatherModel> fetchData()async{
    Position position = await location.getCurrentLocation();
    WeatherModel weatherModel = await weatherData.getCurrentWeatherByPosition(position.latitude, position.longitude);
    print("${weatherModel.description} Isssssssssssss");
    return weatherModel;
  }
}
// https://api.openweathermap.org/data/2.5/weather?lat=33.8293573&lon=74.0766916&appid=42d47b1f960993e0b57a252f0db5d6ad
