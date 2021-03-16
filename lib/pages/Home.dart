import 'package:flutter/material.dart';

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
            label: "Home",),
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
