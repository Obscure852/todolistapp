import 'package:flutter/material.dart';
import 'package:image_life/widgets/CustomButton.dart';
import 'package:image_life/widgets/InputFormField.dart';

class AddTask extends StatefulWidget {
  static String id = "AddTask_screen";
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String errorText = "";
  var taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task", style: TextStyle(color: Colors.black),),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 100.0, right: 30.0, left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter todo item ...",
                  errorText: errorText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    )
                  )
                ),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                maxLines: 10,
              ),
              CustomButton(
                  buttonText: "Add",
                  onClicked: (){

                  })
            ],
          ),
        ),
      ),
    );
  }
}
