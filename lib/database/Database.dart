import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBprovider{
  DBprovider._();
  static final DBprovider db = DBprovider._();
}

Database _database;


Future<Database> get database async {
  if(_database != null){
    return _database;
  }

  _database = await initDB();
  return _database;
  
}

initDB() async {
  Directory directory = await getApplicationDocumentsDirectory();
  String path = join(directory.path, "data.db");
  return await openDatabase(path,version: 1,onOpen: (db){

  },onCreate: (Database db, int version) async {
    await db.execute("CREATE TABLE client ("
                    ":id INTEGER PRIMARY KEY,"
                    "name TEXT,"
                    "image_path TEXT,"
                    "little_info TEXT,"
                    "huge_info TEXT"
                    ")");
  });
}