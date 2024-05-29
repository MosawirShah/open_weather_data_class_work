import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:open_weather_app/model/Weather_model.dart';
import 'package:open_weather_app/services/network_data.dart';

class OpenWeatherView extends StatelessWidget {
 OpenWeatherView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
  final args = ModalRoute.of(context)!.settings.arguments as DescriptionArguments;
    return Scaffold(
      body: Center(child:
        Text("Description: ${args.desription}"))
    );
  }
}
class DescriptionArguments{
  String desription;
  DescriptionArguments({required this.desription});

}