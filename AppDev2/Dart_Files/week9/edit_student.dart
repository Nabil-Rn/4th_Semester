import 'package:flutter/material.dart';

import 'db.dart';

class EditStudent extends StatefulWidget {
  int rollno;

  EditStudent({required this.rollno});

  @override
  State<EditStudent> createState() => _EditStudentState();
}

class _EditStudentState extends State<EditStudent> {
  TextEditingController name = TextEditingController();
  TextEditingController rollno = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController mark = TextEditingController();


  Mydb mydb = new Mydb();

  @override
  void initState() {
    // TODO: implement initState
    mydb.open();

    Future.delayed(Duration(milliseconds: 500), () async {
      var data = await mydb.getStudent(
          widget.rollno); // widget.rollno is passed parameter to this class
      if (data != null) {
        name.text = data["name"];
        rollno.text = data["roll_no"].toString();
        address.text = data["address"];
        mark.text = data["mark"].toString();
        setState(() {});
      } else {
        print(" Not any data with that roll no " + widget.rollno.toString());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Edit Student'),
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
                decoration: InputDecoration(hintText: 'mark'),
              ),
              ElevatedButton(
                onPressed: () {
                  mydb.db.rawUpdate(
                      "update students set name = ?, roll_no = ?, address = ?, mark = ?  where roll_no = ?",
                      [
                        name.text,
                        rollno.text,
                        address.text,
                        mark.text,
                        widget.rollno
                      ]); // added the student to the db
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('New Student added')));
                },
                child: Text("update student to database"),
              ),
            ],
          ),
        ),
      );
    }
  }

