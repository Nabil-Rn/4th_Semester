import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FirstScreen()
        );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen'),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => SecondScreen(data: 'Simple Routing Data')),
            );
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String data;
  SecondScreen({required this.data});

  @override
  Widget build(BuildContext context) {
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

