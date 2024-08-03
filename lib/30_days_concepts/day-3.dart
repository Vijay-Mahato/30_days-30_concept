import 'package:flutter/material.dart';

class Day3 extends StatelessWidget {
  const Day3({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 246, 86, 75),
        title: const Text(
          "Day-3 Text Button & Elevated Button",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  const Color.fromARGB(255, 72, 217, 236),
                ),
                elevation: WidgetStateProperty.all(50),
                padding: WidgetStateProperty.all(
                  const EdgeInsets.all(13), // Increase Size Of The Button
                ),
                overlayColor: WidgetStateProperty.all(Colors.orange),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(20), // Circular border
                  ),
                ),
              ),
              onPressed: () {
                print("Vijay Mahato");
              },
              child: const Text(
                "Text Button",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            //Example of Elevated Button
          ),
          const SizedBox(height: 15),
          ElevatedButton(
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.all(Colors.amber[300]),
                backgroundColor:
                    WidgetStateProperty.all(Theme.of(context).primaryColor),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(15))),

                // padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
              ),
              onPressed: () {
                print("Example Of Elevated Button");
              },
              child: const Text(
                "Elevated Button",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ))
        ],
      ),
    );
  }
}
