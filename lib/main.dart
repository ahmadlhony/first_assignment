// ignore_for_file: prefer_const_constructors

import 'package:first_assignment/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(27, 71, 84, 1.0),
        backgroundColor: Colors.blue[50],
      ),
      title: 'First Assignment',
      home: HomeScreen(),
    );
  }
}
