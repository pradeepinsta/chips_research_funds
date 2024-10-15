import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  final databaseName ="auth.db";

  //Tables

  String user = '''
    CREATE TABLE users (
    usrId INTEGER PRIMARY KEY AUTOINCREMENT,
    fullName TEXT,
    email Text,
    usrName TEXT UNIQUE,
    usrPassword TEXT
    )
   ''';

  Future<Database> initDB()async{
    final databasePath = await getDatabasesPath();
    final path = join(databasePath,databaseName);

     return openDatabase(path,version: 1, onCreate: (db,version)async{
      await db.execute(user);
     });
  }
}