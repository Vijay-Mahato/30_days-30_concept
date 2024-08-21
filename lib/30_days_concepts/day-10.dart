import 'package:flutter/material.dart';

class Day10 extends StatelessWidget {
  const Day10({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruit = ["Apple", "Banana", "Orange", "Litchi", "Watermelon"];
    List<String> name = ["Ajay", "Vijay", "Ram", "Shyam", "Suresh"];
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Day-10 Bottom-Sheet",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Center(
          child: Container(
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                  overlayColor: WidgetStateProperty.all(Colors.grey),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ))),
              onPressed: () {
                print("Button Clicked");
                showModalBottomSheet(
                  backgroundColor: Theme.of(context).primaryColor,
                  enableDrag: true,
                  isDismissible: false,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  context: context,
                  builder: (context) {
                    return ListView.builder(
                      itemCount: fruit.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Text(
                                fruit[index],
                                style: const TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                name[index],
                                style: const TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                );
              },
              child: const Text(
                "Show Bottom Sheet",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ));
  }
}
