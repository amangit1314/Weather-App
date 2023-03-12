import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weather_model.dart';

var url =
    "https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}";

/** 
     * 
     * Parameters
lat, lon 	required 	Geographical coordinates (latitude, longitude). If you need the geocoder to automatic convert city names and zip-codes to geo coordinates and the other way around, please use our Geocoding API.
appid 	required 	Your unique API key (you can always find it on your account page under the "API key" tab)
mode 	optional 	Response format. Possible values are xml and html. If you don't use the mode parameter format is JSON by default. Learn more
units 	optional 	Units of measurement. standard, metric and imperial units are available. If you do not use the units parameter, standard units will be applied by default.
Learn more
lang 	optional 	You can use this parameter to get the output in your language. Learn more
     */

class WeatherRepository {
  Future<WeatherModel> getWeather(String city) async {
    final result = await http.Client().get(
      Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=c2cf84b888104155d13c1114ce904eef'),
    );

    if (result.statusCode != 200) throw Exception();

    return parsedJson(result.body);
  }

  WeatherModel parsedJson(final response) {
    final jsonDecoded = json.decode(response);
    final jsonWeather = jsonDecoded["main"];
    return WeatherModel.fromJson(jsonWeather);
  }

  WeatherModel jsonFormData(final response) {}
}
