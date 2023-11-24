import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/Modules/Screens/Home_Screen/Model/DB_Model/db_model.dart';

class DB_Helper {
  DB_Helper._();

  static final DB_Helper db_helper = DB_Helper._();

  static Database? db;
  //TODO:Table Components
  String tablename = "todo";
  String id = "id";
  String task = "task";

  initDB() async {
    String db_path = await getDatabasesPath();
    String path = join(db_path, "mytodo.db");

    db = await openDatabase(path, version: 1, onCreate: (db, version) async {
      String query =
          "CREATE TABLE IF NOT EXISTS $tablename($id INTEGER PRIMARY KEY AUTOINCREMENT,$task TEXT NOT NULL);";
      await db.execute(query);
    });
  }

  Future<int?> insertTodo({required DB_Model data}) async {
    await initDB();

    String query = "INSERT INTO $tablename($task) VALUES(?);";
    List args = [data.task];

    int? res = await db?.rawInsert(query, args);
    return res;
  }

  Future<List<DB_Model>> displayToDo() async {
    await initDB();
    String query = "SELECT * FROM $tablename;";
    List<Map<String, dynamic>> fetchedData = await db!.rawQuery(query);
    List<DB_Model> fetchdedToDo =
        fetchedData.map((e) => DB_Model(task: e['task'])).toList();
    return fetchdedToDo;
  }
}
