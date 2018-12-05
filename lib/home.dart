import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text("Romansa Chat"),
      ),
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      )
    );
  }
}