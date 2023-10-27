import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:week8/Car.dart';
import 'package:path/path.dart';

class DatabaseHelper{

  static final _databaseName = "cardb.db";
  static final _databaseVersion=1;
  static final table = "cars_table";
  static final columnId = "id";
  static final columnName = "name";
  static final columnMiles = "miles";

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database?> get database async{

    if(_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async{
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path, version: _databaseVersion,
                  onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async{
    await db.execute('''
    create table $table (
    $columnId integar primary key autoincrement,
    $columnName text not null,
    $columnMiles integer not null
    
     ''');
  }


  Future<int?> insert(Car car) async{
    Database? db = await instance.database;
    return await db?.insert(table, {'name': car.name, 'miles': car.miles});
  }

  Future<List<Map<String, dynamic>>?> queryAllRows() async{
    Database? db = await instance.database;
    return await db?.query(table);
  }

  Future<List<Map<String, dynamic>>?> queryRows(name) async{
    Database? db = await instance.database;
    return await db?.query(table, where: "$columnName LIKE '%$name%'");
  }

  Future<int?> update(Car car) async{
    Database? db = await instance.database;
    int id = car.toMap()['id'];
    return await db?.update(table, car.toMap(), where: '$columnId = ?', whereArgs: [id]);

  }

  Future<int?> delete(int id) async{
    Database? db = await instance.database;
    return await db?.delete(table, whereArgs: [id]);
  }
}