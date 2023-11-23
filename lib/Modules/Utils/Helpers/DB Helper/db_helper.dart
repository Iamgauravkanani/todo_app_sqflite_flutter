import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB_Helper{
  DB_Helper._();

  DB_Helper db_helper = DB_Helper._();

  static Database? db;

  void initDB()async{
    String db_path = await getDatabasesPath();
    String path = join(db_path,"mytodo.db");

    db = await openDatabase(path,version: 1)
  }
}