import 'package:flutter/material.dart';
import 'package:hh/login.dart';
import 'package:hh/register.dart';
import 'package:hh/start.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}
