import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile Page',
      home: const MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});


  @override
  State<MyProfilePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height:100,
              width:3000,
              decoration: BoxDecoration(
                  color: Colors.red,
              )
            ),
            Container(
                height:100,
                width:3000,
                decoration: BoxDecoration(
                    color: Colors.orange,
                )
            ),
            Container(
                height:100,
                width:3000,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                )
            ),Container(
                height:100,
                width:3000,
                decoration: BoxDecoration(
                    color: Colors.green,
                )
            ),
            Container(
                height:100,
                width:3000,
                decoration: BoxDecoration(
                    color: Colors.teal,
                )
            ),
            Container(
                height:100,
                width:3000,
                decoration: BoxDecoration(
                    color: Colors.blue,
                )
            ),
            Container(
                height:100,
                width:3000,
                decoration: BoxDecoration(
                    color: Colors.purple,
                )
            ),


          ],
        ),
      ),
    );
  }
}
