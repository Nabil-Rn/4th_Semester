import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter tutorial';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Click this bell', style: TextStyle(fontSize: 40),),
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Welcome to first Snackbar popup menu", style: TextStyle(fontSize: 30),), ));

          }, icon: Icon(Icons.add_alert))
        ],
      ),
      body: ListView(
       // child: Column(
          children: [
            SizedBox(height: 10,),
            Text('Hey once again\nVanier\nFlutter\nComputer Science', style: TextStyle(fontSize: 30),),
            SizedBox(height: 10,),
            Text('Hey once again\nVanier\nFlutter\nComputer Science', style: TextStyle(fontSize: 30),),
            SizedBox(height: 10,),
            Container(height: 150, width: 200, color: Colors.lightBlue, alignment: Alignment.center, child: Text('Container 1', style: TextStyle(fontSize: 20),),),
            SizedBox(height: 10,),
            Container(height: 200, width: 300, color: Colors.amber, alignment: Alignment.center, child: Text('Container 2', style: TextStyle(fontSize: 30),),),
            Container(child: Image( image: NetworkImage("https://www.georgiaaquarium.org/wp-content/uploads/2018/08/dolphin-coast.jpg"),),)
            ,Container(child: Image( image: NetworkImage("https://www.georgiaaquarium.org/wp-content/uploads/2018/08/dolphin-coast.jpg"),),)
            , ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Welcome to first Snackbar popup menu", style: TextStyle(fontSize: 30),),));
            },  child: Text('Click me'))
          ],
        //)
      ),
    );
  }
}
