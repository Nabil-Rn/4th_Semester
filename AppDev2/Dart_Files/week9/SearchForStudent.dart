import 'package:flutter/material.dart';
import 'package:crud/db.dart';
import 'edit_student.dart';

class SearchForStudent extends StatefulWidget {
  int rollno;

  SearchForStudent({required this.rollno});

  @override
  State<SearchForStudent> createState() => _DisplayStudentState();
}

class _DisplayStudentState extends State<SearchForStudent> {

  List<Map> slist = [];
  Mydb mydb = new Mydb();

  @override
  void initState() {
    // TODO: implement initState
    mydb.open();
    getData();
    super.initState();
  }

  void getData() {
    Future.delayed(Duration(milliseconds: 500), () async {
      // use delay min 500ms, because database takes time to reinitialize
      slist = await mydb.db.rawQuery('select * from students where roll_no = ' + widget.rollno.toString());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('student: ' + widget.rollno.toString()),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: slist.length == 0 ? Text(" Not any students to show") : // show message if there is no student
            Column(
              children: slist.map((stuone) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.people),
                    title: Text(stuone["name"]),
                    subtitle: Text(
                        "Roll No " + stuone["roll_no"].toString() + " , Address " +
                            stuone["address"] + " , Mark " +
                            stuone["mark"].toString()),
                    trailing: Wrap(children: [
                      IconButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context) {
                              return EditStudent(rollno: stuone["roll_no"]);
                            }));
                      }, icon: Icon(Icons.edit)),

                      IconButton(onPressed: () async {
                        await mydb.db.rawDelete("delete from students where roll_no = ?", [stuone["roll_no"]]);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Student data Deleted')));

                      }, icon: Icon(Icons.delete, color: Colors.red))

                    ],),
                  ),
                );
              }).toList(),

            )
        ),),
    );
  }
}

