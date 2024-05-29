import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:open_weather_app/model/Weather_model.dart';

class Network{
  final apiKey = '42d47b1f960993e0b57a252f0db5d6ad';
  WeatherModel? weatherModel;
  Future<WeatherModel> getCurrentWeatherData() async{
    final response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=33.73804&lon=73.08&appid=$apiKey'));
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
// https://api.openweathermap.org/data/2.5/weather?lat=33.8293573&lon=74.0766916&appid=42d47b1f960993e0b57a252f0db5d6ad
