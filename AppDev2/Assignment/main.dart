import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1',
      home: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  Counter({super.key});

  static var nightBar = Row(mainAxisSize: MainAxisSize.min, children: [
    Container(
      color: Colors.orange,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(8.0),
      child: Text(
        'Container with padding and margin',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ]);

  static var addPeople = Row(mainAxisSize: MainAxisSize.min, children: [
    Container(
      color: Colors.orange,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(8.0),
      child: Text(
        'Container with padding and margin',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ]);

  static final find = Container(
      // child:
      // ElevatedButton(onPressed: () {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //       SnackBar(content: Text("Welcome to first Snackbar popup menu", style: TextStyle(fontSize: 30),),));
      // },  child: Text('Click me'))
      );

  final leftColumn = Container(
    padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
    child: Column(
      children: [
        nightBar,
        addPeople,
        find,
      ],
    ),
  );

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _n = 1;
  int _m = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void subtract() {
    if (_n <= 1) {
    } else {
      setState(() {
        _n--;
      });
    }
  }

  void addm() {
    setState(() {
      _m++;
    });
  }

  void subtractm() {
    if (_m <= 0) {
    } else {
      setState(() {
        _m--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Application'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 25,
              child: TextButton(
                onPressed: subtract,
                child: Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              ' $_n  adult',
              style: TextStyle(fontSize: 25),
            ),
            Container(
              width: 25,
              child: TextButton(
                onPressed: add,
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              width: 25,
              child: TextButton(
                onPressed: subtractm,
                child: Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              ' $_m  children',
              style: TextStyle(fontSize: 25),
            ),
            Container(
              width: 25,
              child: TextButton(
                onPressed: addm,
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
