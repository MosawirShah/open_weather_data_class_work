import 'dart:convert';

import 'package:open_weather_app/services/app_url.dart';

import '../model/Weather_model.dart';

import 'package:http/http.dart' as http;

class WeatherData{
  WeatherModel? weatherModel;
  Future<WeatherModel> getCurrentWeatherByPosition(double lat, double lng) async{
    final response = await http.get(Uri.parse(AppUrl.getUrl(lat, lng)));
    var jsonData = jsonDecode(response.body);
    if(response.statusCode == 200){
      weatherModel = WeatherModel(description: jsonData['weather'][0]['description'], temp: jsonData['main']['temp'], name: jsonData['name']);
      print(weatherModel!.name);
      return weatherModel!;
    }else{
      return weatherModel!;
    }
    // print(jsonData);
  }
}