import 'package:flutter/material.dart';

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
        '/second' : (context) => SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen'),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/second', arguments: 'Named Routing Data');
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  RouteSettings? settings = ModalRoute.of(context)?.settings;
  final String? data = settings?.arguments as String?;
  //final String? data = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Data from First Screen : $data'),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text('Back to First Screen'))
          ],
        ),
      ),
    );
  }
}

