import 'package:flutter/material.dart';
import 'package:weathero/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors().appBackgroundColor,
      appBar: AppBar(
        backgroundColor: ConstantColors().appBackgroundColor,
        title: const Text('Clima'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          // currentWeather(Icons.wb_sunny_rounded, '32', 'Pilani'),
          SizedBox(height: 60),
          Text(
            'Additional Weather Info',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xdd212121),
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          SizedBox(height: 20),
          // additionalInformation('24', '20%', '1014', '24.6')
        ],
      ),
    );
  }
}
