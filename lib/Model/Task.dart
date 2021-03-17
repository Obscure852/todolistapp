import 'package:flutter/material.dart';

class Task{
  final String task;
  final String time;
  final Color priority;

  Task({this.task, this.time, this.priority});

  factory Task.fromMap(Map<String,dynamic> map){
    return Task(
      task: map['task'],
      time: map['time'],
      priority: map['priority'],
    );
  }

  Map<String,dynamic> toMap(){
    final map = Map<String,dynamic>();
    map['task'] = task;
    map['time'] = time;
    map['priority'] = priority;
    return map;
  }
}