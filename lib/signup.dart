import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text("Buat Akun"),
      ),
      body: Center(
        child: Text(
          "Buat Akun",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      )
    );
  }
}