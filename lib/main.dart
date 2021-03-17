import 'package:flutter/material.dart';
import 'package:image_life/pages/AddTask.dart';
import 'package:image_life/pages/Home.dart';
import 'package:image_life/pages/Login.dart';
import 'package:image_life/pages/Register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IL Todo List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
      routes: {
        Home.id : (context) => Home(),
        Login.id : (context) => Login(),
        Register.id : (context) => Register(),
        AddTask.id : (context) => AddTask(),
      },
    );
  }
}