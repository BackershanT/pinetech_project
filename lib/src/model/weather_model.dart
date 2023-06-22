class WeatherModel {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;
  String? countryname;



  WeatherModel({
    this.cityName,
    this.temp,
    this.wind,
    this.pressure,
    this.feels_like,
    this.humidity,
    this.countryname,


  });
   WeatherModel.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
    countryname=json["sys"]["country"];

}}
