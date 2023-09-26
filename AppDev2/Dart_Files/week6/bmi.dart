import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Result'),
        ),
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String _data = 'Loading...';
  var _bmi = 0.0;


  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      await Future.delayed(Duration(seconds: 2));

      setState(() {
        var random = Random();
        double ranBmi = random.nextInt(25) + 15;
        _bmi = ranBmi;

        if (ranBmi < 18.5) {
          _data = 'Underweight';
        } else if (ranBmi > 18.5 && ranBmi < 24.9){
          _data = 'Normal';
        } else if(ranBmi > 25 && ranBmi <= 29.9){
        _data = 'overweight';
        } else if(ranBmi > 30 && ranBmi <= 34.9){
        _data = 'Obese';
        } else{
        _data = 'Over Obese';
        }

      });
    } catch (error) {
      setState(() {
        _data = 'Data loaded unsuccessfully!';
      });
    }
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_data, style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold ) ),
        Text("$_bmi", style: TextStyle(fontSize: 90, color: Colors.white, fontWeight: FontWeight.bold ) ),
        SizedBox(height: 20),
        ElevatedButton(onPressed: () {
          fetchData();
        }, style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.deepPurpleAccent), ),
          child: Text('Re-Calculate', style: TextStyle(fontSize: 25) ),
        ),
      ],
    );
  }
}

