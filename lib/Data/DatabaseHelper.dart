import 'dart:io';

import 'package:image_life/Data/Data.dart';
import 'package:image_life/Model/Task.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper implements Data{

  static final DatabaseHelper instance = DatabaseHelper._instance();
  static Database _db;
  DatabaseHelper._instance();

  String taskTable = "TasksTable";
  String idCol = "id";
  String taskCol = "task";
  String timeCol = "time";

  Future<Database> get db async{
    if(_db == null){
      _db = await initDB();
    }
    return _db;
  }


  void _onCreate(Database db, int version){
    db.execute("CREATE TABLE $taskTable($idCol INTEGER PRIMARY KEY AUTOINCREMENT, $taskCol TEXT, $timeCol TEXT)");
  }

  @override
  Future<int> deleteTask(Task task) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<List<Task>> getTasksList() {
    // TODO: implement getTasksList
    throw UnimplementedError();
  }

  @override
  Future<List<Map<String, dynamic>>> getTasksMaps() {
    // TODO: implement getTasksMaps
    throw UnimplementedError();
  }

  @override
  Future<Database> initDB() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + "tasks.db";
    Database initDB = await openDatabase(path, version: 1, onCreate: _onCreate);
    return initDB;
  }

  @override
  Future<int> insertTask(Task task) async {
    Database db = await this.db;
    final result = await db.insert(taskTable, task.toMap());
    return result;
  }

  @override
  Future<int> updateTask(Task task) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }



}