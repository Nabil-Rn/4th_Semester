import 'package:flutter/material.dart';
import 'package:crud/add_students.dart';
import 'list_students.dart';
import 'list_passed_student.dart';
import 'SearchForStudent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController roll_no = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SQlite crud example"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return AddStudent(); // this is the class we call from add_students.cart

                      }));
                },
                child: Text('Add a Student'),),

           ElevatedButton(
             onPressed: () {
                Navigator.push(context,
                   MaterialPageRoute(builder: (BuildContext context) {
                     return DisplayStudent(); // this is the class we call from add_students.cart

                    }));
              },
              child: Text('List all Student'),),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return DisplayPassedStudent(); // this is the class we call from add_students.cart

                    }));
              },
              child: Text('List all Passed Student'),),

            TextField(
              controller: roll_no,
              decoration: InputDecoration(hintText: 'Roll number'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      int rollno = int.parse(roll_no.text);
                      return SearchForStudent(rollno: rollno,); // this is the class we call from add_students.cart

                    }));
              },
              child: Text('Search'),),

          ],
        ),
      ),
    );
  }
}

