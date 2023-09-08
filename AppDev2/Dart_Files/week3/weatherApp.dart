import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),

        ),
        body: WeatherApp(),
      ),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Montreal, QC', style: TextStyle(fontSize: 24, fontWeight:  FontWeight.bold),),
        SizedBox(height: 16,),
        Icon(Icons.cloud, size: 80, color: Colors.blue,),
        SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thermostat, size: 24, color: Colors.red,),
            Text('71 F', style: TextStyle(fontSize: 36),)
          ],
        ),
        //weather description
        Padding(padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text('Partly cloudy with a chance of rain', textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.grey),),)
      ],
    );
  }
}

