import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// runApp method calling the class Myapp
//class Myapp is building the materialApp which is the root of all flutter widget
//this class initiates the other class MyStatelessWidget that will build the Scaffold
class MyApp extends StatelessWidget {
  MyApp({super.key});

  static const String_title = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: String_title,
      home: MyStatelessWidget(),
    );
  }
}

//This class designs the widget Scaffold, that user design
// in the main screen (body of the device)
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Revisiting Flutter"),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Container(
            height: 150,
            width: 200,
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('Hey Contsainer'),
          ),
        ],
        // children: [
        //   Text(
        //     "Umbrella",
        //     style: TextStyle(fontSize: 24),
        //   ),
        //   Icon(
        //     Icons.beach_access,
        //     color: Colors.amber,
        //     size: 90,
        //   ),
        //   Text(
        //     "Audio",
        //     style: TextStyle(fontSize: 34),
        //   ),
        //   Icon(
        //     Icons.audiotrack,
        //     color: Colors.green,
        //     size: 90,
        //   ),
        // ],
      )),
    );
  }
}
