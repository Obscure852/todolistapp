import 'package:sqflite/sqflite.dart';
import 'dart:async';

abstract class Data{
  Future<Database> initDB(Database db, int version);
  Future<init> insertData(User user);
}