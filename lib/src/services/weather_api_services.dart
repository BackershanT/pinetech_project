import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pinetech_project/src/model/weather_model.dart';

class WeatherApiServices {
  Future<WeatherModel>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=eb42031611601a1401c1e7423f7ce112');
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(WeatherModel.fromJson(body).cityName);
    print(WeatherModel.fromJson(body).feels_like);
    print(WeatherModel.fromJson(body).humidity);
    print(WeatherModel.fromJson(body).pressure);
    print(WeatherModel.fromJson(body).wind);
    print(WeatherModel.fromJson(body).temp);

    print(response);
    print(response.body);

    return WeatherModel.fromJson(body);
  }
}
