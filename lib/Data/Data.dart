import 'package:image_life/Model/Task.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

abstract class Data {


  Future<Database> initDB();

  Future<int> insertTask(Task task);

  Future<int> updateTask(Task task);

  Future<int> deleteTask(Task task);

  Future<List<Map<String, dynamic>>> getTasksMaps();

  Future<List<Task>> getTasksList();

}