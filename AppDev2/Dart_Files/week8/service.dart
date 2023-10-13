import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'model.dart';

class DataBase {
  Future<Database> initializedDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'planets.db'),
      // join creates the path of database location which is planets.db in this case
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          " create table planets (id integer primary key, name text not null, age integer not null, distancefromsun integer not null)",
        );
      },
    );
  }

// insert data
  Future<int> insertPlanets(List<Planets> planets) async {
    int result = 0;
    final Database db =
        await initializedDB(); // this will get an instance of the database
    for (var planet in planets) {
      result = await db.insert('planets', planet.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    }
    return result;
  }

  // retrieve data
  Future<List<Planets>> retrievePlanets() async {
    final Database db = await initializedDB();
    final List<Map<String, Object?>> queryresult = await db.query('planets');
    return queryresult.map((e) => Planets.fromMap(e)).toList();
  }
}
