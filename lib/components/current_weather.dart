import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 64, color: Colors.deepOrange),
        SizedBox(height: 10),
        Text(
          '$temp°',
          style: TextStyle(fontSize: 46, color: Colors.black),
        ),
        SizedBox(height: 10),
        Text(
          '$location',
          style: TextStyle(fontSize: 18, color: Color(0xff5a5a5a)),
        ),
      ],
    ),
  );
}
