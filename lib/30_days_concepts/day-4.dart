import 'package:flutter/material.dart';

class Day4 extends StatelessWidget {
  const Day4({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> name = [
      "Ajay",
      "Vijay",
      "Sanjay",
      "Rahul",
      "Raj",
      "Rajesh",
      "Romeo"
    ];
    List<String> roll_no = ['21', '45', '67', '99', '32', '11', '65'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text(
          'Day 4 ListView & GridView',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.grey,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: name.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.amber[100]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              name[index],
                              style: const TextStyle(
                                color: Color.fromARGB(232, 21, 16, 16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              roll_no[index],
                              style: const TextStyle(
                                color: Color.fromARGB(232, 21, 16, 16),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
                // return Card(
                //   margin: const EdgeInsets.all(10),
                //   shape: BeveledRectangleBorder(
                //       borderRadius: BorderRadius.circular(5),
                //       side: const BorderSide(color: Colors.red, width: 3)),
                //   color: const Color.fromARGB(255, 114, 186, 219),
                //   child: ListTile(
                //     title: Text(
                //       name[index],
                //       style: const TextStyle(
                //         color: Color.fromARGB(232, 21, 16, 16),
                //         fontWeight: FontWeight.w500,
                //       ),
                //     ),
                //     dense: false,
                //     leading: const Icon(Icons.person),
                //     iconColor: Colors.deepOrange,
                //     subtitle: Text(roll_no[index]),
                //     onTap: () {
                //       print(name[index]);
                //     },
                //   ),
                // );
              },
            ),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            color: const Color.fromARGB(255, 235, 229, 169),
            child: GridView.builder(
              padding: const EdgeInsets.only(top: 5),
              itemCount: name.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 0, crossAxisCount: 3, mainAxisSpacing: 2),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.purple,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          name[index],
                          style: const TextStyle(
                            color: Color.fromARGB(232, 21, 16, 16),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        roll_no[index],
                        style: const TextStyle(
                          color: Color.fromARGB(232, 21, 16, 16),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
