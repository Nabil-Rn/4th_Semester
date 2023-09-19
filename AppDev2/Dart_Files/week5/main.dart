import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {

  final List<String> items = ["Macbook", "Iphone", "Ipod"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
                MaterialPageRoute(
                builder: (context) => SecondScreen(items: items),
                ));
          },
            child: Text('Go to Second Screen (simple routing)'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final List<String> items;

  SecondScreen({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context, index){
          return ListTile(
            title: Text(items[index]),
          );
          })
    );
  }
}

