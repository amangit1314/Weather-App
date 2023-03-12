// import 'package:clima_weather_app/models/weather_model.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import '../models/weather_model.dart';

class SearchPage extends StatelessWidget {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.lightBlue,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );

  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    var cityController = TextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Center(
            child: SizedBox(
          height: 300,
          width: 300,
          child: FlareActor(
            "assets/WorldSpin.flr",
            fit: BoxFit.contain,
            animation: "roll",
          ),
        )),
        // BlocBuilder<WeatherBloc, WeatherState>(
        //   builder: (context, state) {
        //     if (state is WeatherIsNotSearched) {
        //       return Container(
        //         padding: const EdgeInsets.only(
        //           left: 32,
        //           right: 32,
        //         ),
        //         child: Column(
        //           children: <Widget>[
        //             const Text(
        //               "Search Weather",
        //               style: TextStyle(
        //                   fontSize: 40,
        //                   fontWeight: FontWeight.w500,
        //                   color: Colors.white70),
        //             ),
        //             const Text(
        //               "Instanly",
        //               style: TextStyle(
        //                   fontSize: 40,
        //                   fontWeight: FontWeight.w200,
        //                   color: Colors.white70),
        //             ),
        //             const SizedBox(
        //               height: 24,
        //             ),
        //             TextFormField(
        //               controller: cityController,
        //               decoration: const InputDecoration(
        //                 prefixIcon: Icon(
        //                   Icons.search,
        //                   color: Colors.white70,
        //                 ),
        //                 enabledBorder: OutlineInputBorder(
        //                     borderRadius: BorderRadius.all(Radius.circular(10)),
        //                     borderSide: BorderSide(
        //                         color: Colors.white70,
        //                         style: BorderStyle.solid)),
        //                 focusedBorder: OutlineInputBorder(
        //                     borderRadius: BorderRadius.all(Radius.circular(10)),
        //                     borderSide: BorderSide(
        //                         color: Colors.blue, style: BorderStyle.solid)),
        //                 hintText: "City Name",
        //                 hintStyle: TextStyle(color: Colors.white70),
        //               ),
        //               style: const TextStyle(color: Colors.white70),
        //             ),
        //             const SizedBox(
        //               height: 20,
        //             ),
        //             SizedBox(
        //               width: double.infinity,
        //               height: 50,
        //               child: TextButton(
        //                 style: flatButtonStyle,
        //                 onPressed: () {
        //                   weatherBloc.add(FetchWeather(cityController.text));
        //                 },
        //                 child: const Text(
        //                   "Search",
        //                   style: TextStyle(color: Colors.white70, fontSize: 16),
        //                 ),
        //               ),
        //             )
        //           ],
        //         ),
        //       );
        //     } else if (state is WeatherIsLoading) {
        //       return const Center(child: CircularProgressIndicator());
        //     } else if (state is WeatherIsLoaded) {
        //       return ShowWeather(state.getWeather, cityController.text);
        //     } else {
        //       return const Text(
        //         "Error",
        //         style: TextStyle(color: Colors.white),
        //       );
        //     }
        //   },
        // )
      ],
    );
  }
}

// ignore: must_be_immutable
class ShowWeather extends StatelessWidget {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.lightBlue,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );

  WeatherModel weather;
  final city;

  ShowWeather(
    Key? key,
    this.weather,
    this.city,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 32, left: 32, top: 10),
      child: Column(
        children: <Widget>[
          Text(
            city,
            style: const TextStyle(
                color: Colors.white70,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "${weather.getTemp.round()}C",
            style: const TextStyle(color: Colors.white70, fontSize: 50),
          ),
          const Text(
            "Temperature",
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "${weather.getMinTemp.round()}C",
                    style: const TextStyle(color: Colors.white70, fontSize: 30),
                  ),
                  const Text(
                    "Min Temperature",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "${weather.getMaxTemp.round()}C",
                    style: const TextStyle(color: Colors.white70, fontSize: 30),
                  ),
                  const Text(
                    "Max Temperature",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextButton(
              style: flatButtonStyle,
              onPressed: () {
                // BlocProvider.of<WeatherBloc>(context).add(ResetWeather());
              },
              child: const Text(
                "Search",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
