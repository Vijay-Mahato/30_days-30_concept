// ignore: unused_import
import 'package:concept/30_days_concepts/day-10.dart';
import 'package:concept/30_days_concepts/day-5.dart';
import 'package:concept/30_days_concepts/day-7.dart';
import 'package:concept/30_days_concepts/day-9.dart';
import 'package:flutter/material.dart';

import '30_days_concepts/day-1.dart';
import '30_days_concepts/day-11.dart';

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
