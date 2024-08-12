import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Day5 extends StatelessWidget {
  const Day5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Day-5 Snack-Bar",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 246, 86, 75),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          height: 50,
          width: double.maxFinite,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue),
                overlayColor: WidgetStateProperty.all(Colors.white),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
              ),
              onPressed: () {
                print("clicked the button");
                final snackbar = SnackBar(
                  action: SnackBarAction(
                    label: 'Undo',
                    textColor: const Color.fromARGB(255, 0, 139, 253),
                    onPressed: () {
                      print("Undo button clicked");
                    },
                  ),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  duration: const Duration(seconds: 2),
                  backgroundColor: Colors.black,
                  content: const Center(
                    child: Text(
                      "You have clicked the button",
                    ),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text(
                "SnackBar",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}
