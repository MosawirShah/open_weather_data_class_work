class WeatherModel{
  Coordinate? coord;
  // List<Weather> weather;
  // String base;
  // Main main;

}
class Coordinate{
  double lng;
  double lat;

  Coordinate({required this.lat, required this.lng});
  factory Coordinate.fromJson(Map<String, dynamic> json){
    return Coordinate(lat: json['lat'], lng: json['lng']);
  }
}
class Weather{
  int id;
  String main;
  String description;
  String icon;

  Weather({required this.id,required this.main, required this.description, required this.icon});
}
class Main{}