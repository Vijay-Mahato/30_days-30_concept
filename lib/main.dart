// ignore: unused_import
import 'package:concept/30_days_concepts/day-10.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //Define The Theme
        brightness: Brightness.light,
        primaryColor: const Color.fromARGB(255, 128, 64, 240),
      ),
      // ignore: prefer_const_constructors
      home: Day11(),
    );
  }
}
