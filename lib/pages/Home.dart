import 'package:flutter/material.dart';

import 'AddTask.dart';

class Home extends StatefulWidget {
  static String id = "home_screen";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Todo List", style: TextStyle(color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              icon: Icon(Icons.add_circle, size: 30.0,color: Colors.white,),
              onPressed: (){
                Navigator.pushNamed(context, AddTask.id);
              }),
          PopupMenuButton(itemBuilder: (context){
            return [
                  PopupMenuItem(
                      child: GestureDetector(
                        onTap: (){
                          print("You are signing out!.");
                        },
                        child: Row(
                          children: [
                            Icon(Icons.exit_to_app),
                            Text("Sign Out", style: TextStyle(color: Colors.black),),
                          ],
                        ),
                      )
                  )
            ];
          })
        ],
      ),
      body: Container(
        child: Center(
          child: Text("Bottom navigation text", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_work),
            label: "Work",),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",)
        ],
      ),
    );
  }
}
