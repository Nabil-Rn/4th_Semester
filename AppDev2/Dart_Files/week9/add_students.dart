import 'package:flutter/material.dart';
import 'package:crud/db.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  TextEditingController name = TextEditingController();
  TextEditingController rollno = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController mark = TextEditingController();

  Mydb mydb = new Mydb(); // create an instance for the database (db object)

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mydb.open(); // initialize the database and start to add students information
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Student'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(hintText: 'Student name'),
            ),
            TextField(
              controller: rollno,
              decoration: InputDecoration(hintText: 'Roll number '),
            ),
            TextField(
              controller: address,
              decoration: InputDecoration(hintText: 'Address'),
            ),
            TextField(
              controller: mark,
              decoration: InputDecoration(hintText: 'Mark'),
            ),
            ElevatedButton(
              onPressed: () {
                mydb.db.rawInsert(
                    "insert into students (name, roll_no, mark, address) values (?, ?, ?, ?);",
                    [
                      name.text,
                      rollno.text,
                      mark.text,
                      address.text
                    ]); // added the student to the db
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('New Student added')));
              },
              child: Text("save a student to database"),
            ),
          ],
        ),
      ),
    );
  }
}
