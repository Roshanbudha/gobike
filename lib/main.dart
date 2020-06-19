import 'package:flutter/material.dart';
import 'package:final_project/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Simple Login Page',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: login_page(),
    );
  }
}  