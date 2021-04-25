import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'config.dart';

class SQLiteDbProvider {

  static Database db;
  
  static Future<void> open() async {
    db = await openDatabase(
      join(await getDatabasesPath(), FlutterAppDbConfig.databaseName),
      onCreate: (db, version) {
        return _createDb(db);
      },
      version: FlutterAppDbConfig.databaseVersion,
    );
  }

  static void _createDb(Database db) {
    FlutterAppDbConfig.createTablesQueries
        .forEach((createTableQuery) async {
      await db.execute(createTableQuery);
    });
  }
  
  static Future<void> clear() async {
    await deleteDatabase(join(await getDatabasesPath(), FlutterAppDbConfig.databaseName));
  }
}