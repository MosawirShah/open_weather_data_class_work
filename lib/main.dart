import 'package:flutter/material.dart';
import 'package:open_weather_app/views/splash_view.dart';
import 'package:open_weather_app/utils/routes.dart';
import 'package:open_weather_app/views/open_weather_view.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashView,
      routes: AppRoutes.appRoutes(context));
  }
}
//////////////////////////

// void main(){
//   executeTasks();
// }
//
// executeTasks() async{
//   task1();
//   String result = await task2();
//   task3(result);
// }
//
// task1(){
//   String result = "Task-2 Data";
//   print('Task1 Completed');
// }
// Future<String> task2()async{
//   const duration =  Duration(seconds: 3);
//   String result = 'null';
//   await Future.delayed((duration),(){
//     result = "Task-2 Data";
//     print('Task2 Completed');
//   });
//  return result;
// }
// task3(String resulOfTask2){
//   String result = "Task-3 Data";
//   print('Task3 Completed with $resulOfTask2');
// }
