import 'package:flutter/material.dart';

class Day5 extends StatelessWidget {
  const Day5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: false,
        title: const Text(
          "Day-5 Snack Bar Widget",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 17, color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          height: 40,
          width: 200,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(Theme.of(context).primaryColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.black, width: 2)))),
              onPressed: () {
                print("Snack Bar Button Clicked");
                final snack = SnackBar(
                  action: SnackBarAction(
                      label: "Undo",
                      onPressed: () {
                        print("Undo Button Clicked");
                      }),
                  backgroundColor: Colors.black,
                  duration: const Duration(seconds: 5),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2)),
                  content: const Text(
                    "This is a Snack Bar",
                    style: TextStyle(color: Colors.white),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snack);
              },
              child: const Text(
                "Snack Bar",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              )),
        ),
      ),
    );
  }
}
