import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:week11/service.dart';
import 'dart:convert';
import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late List<UserModel>? _userModel = [];

  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Rest API Cloud Fetch '),
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _userModel!.length,
              itemBuilder: (context, index) {
                return Card(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(_userModel![index].id.toString()),
                        Text(_userModel![index].username),
                      ],
                    ),
                    SizedBox(height: 25,)
                  ],
                ));
              }),
    ));
  }
}
