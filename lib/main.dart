import 'package:flutter/material.dart';
import 'package:fruithero/src/screens/Dashboard.dart';
import 'package:fruithero/src/screens/Home/HomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

