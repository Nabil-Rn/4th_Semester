import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      home: CounterDemo(),
    );
  }
}

class CounterDemo extends StatefulWidget {
  const CounterDemo({super.key});

  @override
  State<CounterDemo> createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterDemo> {
  int _n =0;

  void add(){

    setState(() {
      _n++;
    });
  }

  void subtract(){
    setState(() {
      _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Application'),),
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(onPressed: add,
                child: Icon( Icons.add, color: Colors.green,
                ),
                backgroundColor: Colors.white,
              ),
              FloatingActionButton(onPressed: subtract,
                child: Icon( Icons.thumb_up, color: Colors.blue,
                ),
                backgroundColor: Colors.white,
              ),
              FloatingActionButton(onPressed: null,
                child: Icon( Icons.thumb_down, color: Colors.red,
                ),
                backgroundColor: Colors.white,
              ),
            ],
          )
        )
      ),
    );
  }
}
