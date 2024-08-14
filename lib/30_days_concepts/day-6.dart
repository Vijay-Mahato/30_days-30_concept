import 'package:flutter/material.dart';

class Day6 extends StatefulWidget {
  const Day6({super.key});

  @override
  State<Day6> createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  List<String> fruits = [
    "Apple",
    "Banana",
    "Cherry",
    "Guava",
    "Grapes",
    "Coconut"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Day-6 Dissmisible",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 246, 86, 75),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  duration: const Duration(seconds: 3),
                  action: SnackBarAction(
                      label: 'Delete',
                      textColor: Colors.blue,
                      onPressed: () {
                        print("Clicked Deleted");
                      }),
                  content: Text("${fruits[index]} Deleted"),
                  backgroundColor: Colors.red,
                  behavior: SnackBarBehavior.floating,
                ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  duration: const Duration(seconds: 3),
                  action: SnackBarAction(
                      label: 'Saved',
                      textColor: Colors.blue,
                      onPressed: () {
                        print("Clicked Saved");
                      }),
                  content: Text("${fruits[index]} Saved"),
                  backgroundColor: Colors.green,
                  behavior: SnackBarBehavior.floating,
                ));
              }
            },
            key: Key(fruits[index]),
            background: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_rounded,
                      color: Colors.black,
                    )),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            secondaryBackground: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.save,
                      color: Colors.black,
                    )),
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            child: Card(
              color: Colors.grey,
              child: ListTile(
                title: Text(fruits[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
