import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:open_weather_app/model/Weather_model.dart';
import 'package:open_weather_app/services/network.dart';

class OpenWeatherView extends StatelessWidget {
 OpenWeatherView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
  final args = ModalRoute.of(context)!.settings.arguments as WeatherArguments;
  double temp = args.weatherModel.temp!;
   String weatherIcon;
   int temperature = temp.toInt();
   String message;

   updateUI(){

    temperature = temp.toInt();
   }

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.5,
            image: AssetImage('assets/weather.jpg',),fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Expanded(
                flex: 1,
                  child: Text('🌩',style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold,))),
            Expanded(
              flex: 1,
              child: Text("  ${temperature}°C", style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold,),),
            ),
            SizedBox(height: 100,),
            Expanded(
              flex: 3,
                child: Text('It\'s 🍦 time',style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold,))),
          ],),
        ),
      ),);
  } 
}
class WeatherArguments{
  WeatherModel weatherModel;
  WeatherArguments({required this.weatherModel});

}