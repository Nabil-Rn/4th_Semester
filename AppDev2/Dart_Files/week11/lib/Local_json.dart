import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List _items = [];
  Future<void> readJson() async{
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json File'),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Load Data from local JSON File"),
              onPressed: readJson,),
            _items.isNotEmpty ? Expanded(
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index){
                    return Card (
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Text(_items[index]["id"]),
                        title: Text(_items[index]["name"]),
                        subtitle: Text(_items[index]["description"]),
                      ),
                    );
                  },
                ))
                : Container()
          ],
        ),
      ),
    );
  }
}

