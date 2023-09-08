import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Asset Demo'),
          
        ),
        body: Image.asset('assets/images/dolphin.jpg'),
        // before "uses-material-design: true"
        //  assets:
        //     - assets/images/dolphin.jpg
      ),
    );
  }
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Week 3"),) ,
          body: AlignmentDemo()
      ),
    );
  }
}

class AlignmentDemo extends StatelessWidget {
  const AlignmentDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(color: Colors.blue, padding: EdgeInsets.all(16.0),margin: EdgeInsets.all(8.0),
            child: Text('Container with padding and margin', style: TextStyle(color: Colors.white),),
          ),
          SizedBox(height: 16.0,),
          Container(color: Colors.green, padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            margin: EdgeInsets.only(top: 80.0),
            child: Text('custom padding and margin', style: TextStyle(color: Colors.white),),
          ),
          SizedBox(height: 16.0,),
          Container(color: Colors.orange, padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Text('padding and margin on all sides', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );




    /*
        Center(
      child: Container(
        width: 300,
        height: 200,
        color: Colors.amber[300],
        child: //Column
          //Row
          Flex(
            direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(color: Colors.red, height: 50, width: 50,),
            Container(color: Colors.green, height: 50, width: 50,),
            Container(color: Colors.blue, height: 55, width: 50,),
          ],
        ),
      ),
    );
    */
  }
}

*/