import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Mydb {
  late Database db; // open the database for storing the data

  Future open() async {
    // get a location using getDatabasepath

    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'demo1.db');
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
      create table if not exists students (
      id primary key,
      name varchar(50) not null,
      roll_no int not null,
      mark int not null,
      address varchar(100) not null
      );
      ''');
    });
  }

  Future<Map<dynamic, dynamic>?> getStudent(int rollno) async {
    List<Map> maps =
        await db.query('students', where: 'roll_no = ?', whereArgs: [rollno]);
    // getting student with roll no
    if (maps.length > 0) {
      return maps.first;
    }
    return null;
  }
}
