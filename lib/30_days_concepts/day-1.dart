import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Day1 extends StatelessWidget {
  const Day1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 246, 86, 75),
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Day-1 Container & SizedBox",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 219, 115, 237),
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  blurRadius: 10,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Container(
              margin: const EdgeInsets.all(20),
              color: const Color.fromARGB(255, 110, 155, 232),
            )),
      ),
    );
  }
}
