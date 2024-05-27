import 'dart:convert';

import 'package:http/http.dart' as http;

class Network{
  final apiKey = '42d47b1f960993e0b57a252f0db5d6ad';

  getCurrentWeatherData() async{
    final response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=33.8293573&lon=74.0766916&appid=$apiKey'));
    var jsonData = jsonDecode(response.body);
    print(jsonData);
  }
}
