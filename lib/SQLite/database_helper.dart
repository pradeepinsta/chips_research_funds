import 'package:chips_research_funds/JSON/users.dart';
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

  //Authentication

  Future<bool> authenticate(Users usr)async{
    final Database db = await initDB();
    var result = await db.rawQuery("select * from users where usrName = '${usr.usrName}' AND usrPassword = '${usr.password}' ");
    if(result.isNotEmpty)
      {
        return true;
      }
    else{
      return false;
    }
  }

  //Signup
  Future<int> createUser(Users usr) async{
    final Database db = await initDB();
    return db.insert("users", usr.toMap());

  }

  //Get current user Details

  Future<Users?> getUser(String usrName) async{
    final Database db = await initDB();
    var res = await db.query("users", where: "usrName = ?", whereArgs: [usrName]);
    return res.isEmpty? Users.fromMap(res.first):null;
  }

}