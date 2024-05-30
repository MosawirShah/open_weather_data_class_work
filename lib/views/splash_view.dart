import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:open_weather_app/model/Weather_model.dart';
import 'package:open_weather_app/utils/routes.dart';
import 'package:open_weather_app/views/open_weather_view.dart';

import '../services/network.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Network network = Network();
  WeatherModel weatherModel = WeatherModel();
@override
  initState() {
    fetchNetworkData();
    Future.delayed(const Duration(seconds: 5),(){
     // print("Description : ${weatherModel.description}");
     Navigator.of(context).pushNamed(AppRoutes.openWeatherView,arguments: WeatherArguments(weatherModel: weatherModel));
    });
    super.initState();
  }

  fetchNetworkData()async{
   weatherModel= await network.fetchData();
   print(" lllllll ${weatherModel.temp}");
  }



  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          size: 60,
          color: Colors.white,
        ),
      ),
    );
  }
}
