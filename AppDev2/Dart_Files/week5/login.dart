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
        '/': (context) => FirstScreen(),
        '/Second': (context) => SecondScreen()
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  var username = "";
  final password = 123;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        children: [
          Container(
          child: SizedBox(
            width: 250,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
        ),
        Container(
        ElevatedButton(
        onPressed: () {
    if (password == password) {
    Navigator.pushNamed(
    context,
    '/Second',
    arguments: username,
    );
    }
    },
    child: Text('Login'),
    ),
    ],
      ),
    );
  }
}



class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final username =
        ModalRoute.of(context)?.settings.arguments as String? ?? "";

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Text("Hi $username !"),
    );
  }
}
