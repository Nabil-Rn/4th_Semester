import 'package:flutter/material.dart';
import 'package:week5/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => FirstScreen(),
        '/Second' : (context) => SecondScreen()

      },
    );
  }
}


class FirstScreen extends StatelessWidget {

  final List<String> items = ["Android", "Google", "Java"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(
                context,
                '/Second',
                arguments: items,
            );
          },
          child: Text('Go to Second Screen (simple routing)'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final List<String> items = ModalRoute.of(context)?.settings.arguments as List<String>? ?? [];

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


