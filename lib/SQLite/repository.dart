
import 'package:chips_research_funds/SQLite/tables.dart';


import '../JSON/users.dart';
import 'database_helper.dart';

class Repository{
  final DatabaseHelper databaseHelper = DatabaseHelper();

  //Login
  Future<bool> authenticate(Users users)async{
    final db = await databaseHelper.initDB();
    final authenticated = await db.query(Tables.userTableName,where: 'username = ? AND password = ?', whereArgs: [users.usrName, users.password]);
    if(authenticated.isNotEmpty){
      return true;
    }else{
      return false;
    }
  }

  //Sign up
  Future<int> registerUser(Users users)async{
    final db = await databaseHelper.initDB();
    //First check whether the entered user has already exists or not then create it.
    final isDuplicateUser = await db.query(Tables.userTableName, where: 'username = ?',whereArgs: [users.usrName]);
    if(isDuplicateUser.isNotEmpty){
      return 0;
    }else{
      //If not create the user
      return await db.insert(Tables.userTableName, users.toMap());
    }
  }

  Future<Users> getLoggedInUser(String username)async{
    final db = await databaseHelper.initDB();
    final res = await db.query(Tables.userTableName,where: 'username = ?',whereArgs: [username]);
    if(res.isNotEmpty){
      return Users.fromMap(res.first);
    }else{
      throw Exception("User $username not found");
    }
  }



}