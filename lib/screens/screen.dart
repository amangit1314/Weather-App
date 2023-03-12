import 'package:flutter/material.dart';

import '../components/reusables.dart';
import '../services/location.dart';

class WeatherUI extends StatelessWidget {
  const WeatherUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff303644),
      body: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late int tempCurrent;
  late int tempTomorrow;
  late int tempMinSun, tempMaxSun;
  late int tempMinMon, tempMaxMon;
  late int tempMinTue, tempMaxTue;
  late int tempMinWed, tempMaxWed;
  late int tempMinThur, tempMaxThur;
  late int tempMinFri, tempMaxFri;
  late int tempMinSat, tempMaxSat;
  late String summary;
  Location location = Location();

  // Future<void> getWeather() async {
  //   Location location = Location();
  //   location.getCurrentPosition();
  //   var darksky = DarkSkyWeather(
  //     // TODO: USE YOUR OWN API_KEY FROM DARKSKY WEATHER API
  //     "API_KEY",
  //     units: Units.SI,
  //     language: Language.English,
  //   );
  //   var forecast = await darksky.getForecast(
  //       location.latitude, location.longitude, excludes: [
  //     Exclude.Hourly,
  //     Exclude.Minutely,
  //     Exclude.Alerts,
  //     Exclude.Flags
  //   ]);
  //   setState(() {
  //     tempCurrent = forecast.currently.temperature.toInt();
  //     tempTomorrow = forecast.daily.data[1].temperatureMax.toInt();
  //     tempMaxSun = forecast.daily.data[1].temperatureMax.toInt();
  //     tempMinSun = forecast.daily.data[1].temperatureMin.toInt();
  //     tempMaxMon = forecast.daily.data[2].temperatureMax.toInt();
  //     tempMinMon = forecast.daily.data[2].temperatureMin.toInt();
  //     tempMaxTue = forecast.daily.data[3].temperatureMax.toInt();
  //     tempMinTue = forecast.daily.data[3].temperatureMin.toInt();
  //     tempMaxWed = forecast.daily.data[4].temperatureMax.toInt();
  //     tempMinWed = forecast.daily.data[4].temperatureMin.toInt();
  //     tempMaxThur = forecast.daily.data[5].temperatureMax.toInt();
  //     tempMinThur = forecast.daily.data[5].temperatureMin.toInt();
  //     tempMaxFri = forecast.daily.data[6].temperatureMin.toInt();
  //     tempMinFri = forecast.daily.data[6].temperatureMin.toInt();
  //     tempMaxSat = forecast.daily.data[7].temperatureMax.toInt();
  //     tempMinSat = forecast.daily.data[7].temperatureMin.toInt();
  //     summary = forecast.daily.data[0].summary;
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getWeather();
  //   location.getCityName();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: ListTile(
                    title: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(
                            Icons.location_on,
                            // color: kMyColor,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            location.cityName,
                            style: const TextStyle(
                              fontSize: 30.0,
                              // color: kMyColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    subtitle: const Center(
                      child: Text(
                        'Today',
                        // style: kTextDayStyle,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/icon.png',
                  color: Colors.white,
                  scale: 1.5,
                ),
                Text(
                  '$tempCurrent°',
                  style: const TextStyle(
                    fontSize: 100.0,
                    // color: kMyColor,
                  ),
                ),
                // color: kMyColor,
                Text(
                  summary,
                  style: const TextStyle(fontSize: 20.0),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: const Center(
                    child: Text(
                      'Tomorrow',
                      // style: kTextDayStyle,
                    ),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/icon.png',
                        color: Colors.white,
                        scale: 2.0,
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        '$tempTomorrow°',
                        style: const TextStyle(
                          fontSize: 30.0,
                          // color: kMyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            children: <Widget>[
              ReusableExpandedDays(
                textMaxDegrees: '$tempMaxSun',
                textMinDegrees: '$tempMinSun',
                textDay: 'S',
              ),
              ReusableExpandedDays(
                textDay: 'M',
                textMaxDegrees: '$tempMaxMon',
                textMinDegrees: '$tempMinMon',
              ),
              ReusableExpandedDays(
                textDay: 'T',
                textMaxDegrees: '$tempMaxTue',
                textMinDegrees: '$tempMinTue',
              ),
              ReusableExpandedDays(
                textDay: 'W',
                textMaxDegrees: '$tempMaxWed',
                textMinDegrees: '$tempMinWed',
              ),
              ReusableExpandedDays(
                textDay: 'T',
                textMaxDegrees: '$tempMaxThur',
                textMinDegrees: '$tempMinThur',
              ),
              ReusableExpandedDays(
                textDay: 'F',
                textMaxDegrees: '$tempMaxFri',
                textMinDegrees: '$tempMinFri',
              ),
              ReusableExpandedDays(
                textDay: 'S',
                textMaxDegrees: '$tempMaxSat',
                textMinDegrees: '$tempMinSat',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
