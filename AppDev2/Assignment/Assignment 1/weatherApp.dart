import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1',
      home: Scaffold(
        body: WeatherApp(),
      ),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50.0),

          Container(
            width: 350.0,
            color: Colors.white,
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.black),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Cork', // Search text
                    style: TextStyle(fontSize: 18.0,color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),

          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Cork', // Location text
                  style: TextStyle(fontSize: 45.0, color: Colors.white),
                ),
                Row(
                  children: [
                    SizedBox(width: 120.0),
                    Icon(Icons.location_on, color: Colors.white),
                    SizedBox(width: 10.0),
                    Text(
                      '-8.47, 51.9', // City name text
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),

          Container(
            child: Row(
              children: [
                SizedBox(width: 50.0),
                Column(
                  children: [
                    Text('16°C',style: TextStyle(fontSize: 45.0, color: Colors.white),
                    ),
                    Text('Feels like 13°C',style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(width: 50.0),
                Stack(
                  children: <Widget>[
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                      size: 80.0,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30.0),

          Container(
            child: Text(
              'Broken Clouds',
              style: TextStyle(fontSize: 35.0, color: Colors.white,),
            ),
          ),
          SizedBox(height: 130.0),

          Container(
            child: Row(
              children: [
                SizedBox(width: 30.0),
                Column(
                  children: [
                    Text(
                      'Fri',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      '16°C',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(width: 10.0),
                Stack(
                  children: <Widget>[
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                      size: 10.0,
                    ),
                  ],
                ),

                // Duplicate the code two more times
                SizedBox(width: 30.0),
                Column(
                  children: [
                    Text(
                      'Sat',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      '16°C',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(width: 10.0),
                Stack(
                  children: <Widget>[
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                      size: 10.0,
                    ),
                  ],
                ),

                // Duplicate the code one more time
                SizedBox(width: 30.0),
                Column(
                  children: [
                    Text(
                      'Sun',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    Text(
                      '20°C',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(width: 10.0),
                Stack(
                  children: <Widget>[
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 10.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),

          Container(
            child: Row(
              children: [
                SizedBox(width: 80.0),
                Icon(Icons.access_time, color: Colors.black54,size: 18.0,),
                SizedBox(width: 10.0),
                Text(
                  'Last updated on 2:49 PM',
                  style: TextStyle(fontSize: 18.0, color: Colors.black54),
                ),
              ],
            ),
          )


         ],
      ),
    );
  }
}
