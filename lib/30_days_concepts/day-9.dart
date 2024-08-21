import 'package:flutter/material.dart';

class Day9 extends StatelessWidget {
  const Day9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 1,
          centerTitle: false,
          title: const Text(
            "Day-9   Alert Box",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
        body: Center(
          child: Container(
            height: 40,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  side: WidgetStateProperty.all(
                      const BorderSide(color: Colors.black, width: 2)),
                ),
                onPressed: () {
                  print("Button Clicked");
                  _showMyDialog(context);
                },
                child: const Text(
                  'Show Alert Box',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )),
          ),
        ));
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,

          // backgroundColor: Colors.grey,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              side: BorderSide(
                color: Colors.black,
                width: 2,
              )),

          title: const Text('AlertDialog Title'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () {}, child: const Text("Approved")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"))
          ],
        );
      });
}
