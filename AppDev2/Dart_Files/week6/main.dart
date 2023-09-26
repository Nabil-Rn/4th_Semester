import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Async Example'),
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
  @override
  void initState(){
    super.initState();
    fetchData();
  }
  Future<void> fetchData() async{
    try{
      await Future.delayed(Duration(seconds: 2));

      setState((){
        _data = 'Data loaded successfully!';
      });

    }catch(error){
      setState((){
        _data = 'Data loaded unsuccessfully!';
      });
    }
  }
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_data),
        SizedBox(height: 20),
        ElevatedButton(onPressed: (){
          fetchData();
        }, child: Text('Reload Data'),
        ),
      ],
    );
  }
}

