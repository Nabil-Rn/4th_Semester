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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150.0),

              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    'Check In/ Check Out',
                    style: TextStyle(
                      fontSize: 13.0, // Adjust the font size as needed
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Tonight',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.0),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 1.0, // Border width
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
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
                            style: TextStyle(fontSize: 20),
                          ),
                          Container(
                            width: 40,
                            child: TextButton(
                              onPressed: add,
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 20.0),

                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
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
                            style: TextStyle(fontSize: 20),
                          ),
                          Container(
                            width: 40,
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
                  ],
                ),
              ),

              SizedBox(height: 70.0),

              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "You are trying to find hotel for $_n adults and $_m children",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.deepOrange),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.all(15.0),
                    ),
                    ),
                  child: Text("Find Hotels", style: TextStyle(fontSize: 20),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
