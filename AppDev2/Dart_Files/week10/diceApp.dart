import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.redAccent),
      title: 'Dice Page',
      home: const DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});


  @override
  State<DicePage> createState() => _DicePage();
}

class _DicePage extends State<DicePage> {

  static int num = 0;
  static List imgs = [ 'lib/assets/Dice-1.png',
  'lib/assets/Dice-2.png',
  'lib/assets/Dice-3.png',
  'lib/assets/Dice-4.png',
  'lib/assets/Dice-5.png',
  'lib/assets/Dice-6.png',
  ];

  static String img = imgs[0];
  @override

  static roll() {
    num = Random().nextInt(6);
    img = imgs[num];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent, elevation: 0.0,
          centerTitle: true,
          title: Text('Dice Rolling App', style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(img, scale: 3,),

            SizedBox(height: 50),

            Container(
              margin: EdgeInsets.only(top:20),
              height:50,
              width:150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2,),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(
                onPressed: () {
                    setState( (){
                      roll();
                    });
                  },
                child: const Text('Roll the dice', style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold   )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
