const apiKey = '42d47b1f960993e0b57a252f0db5d6ad';
const String baseUrlByPosition = 'https://api.openweathermap.org/data/2.5/weather?';
class AppUrl{
  dynamic lat;
  dynamic lng;
  static String getUrl(double lat, double lng){
  String endPointByPosition = '${baseUrlByPosition}lat=${lat}&lon=${lng}&appid=$apiKey&units=metric';
  return endPointByPosition;
  }
}

