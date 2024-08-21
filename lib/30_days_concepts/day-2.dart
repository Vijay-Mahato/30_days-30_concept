import 'package:concept/30_days_concepts/day-3.dart';
import 'package:flutter/material.dart';

class Day2 extends StatelessWidget {
  const Day2({super.key});

  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.width;
    var y = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Day-2 Row & Column",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 246, 86, 75),
          actions: [
            IconButton(
                icon: Icon(Icons.skip_next_sharp),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Day3();
                  }));
                }),
          ],
        ),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 6),
            width: x,
            height: 200,
            color: const Color.fromARGB(255, 247, 206, 85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.purple,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 7),
            height: 200,
            width: x,
            color: Colors.purple[200],
            child: Wrap(direction: Axis.vertical, children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.orange,
              ),
              Container(
                height: 50,
                width: 50,
                color: const Color.fromARGB(255, 33, 198, 243),
              ),
              Container(
                height: 50,
                width: 50,
                color: const Color.fromARGB(255, 210, 15, 149),
              ),
              Container(
                height: 50,
                width: 50,
                color: const Color.fromARGB(255, 217, 186, 7),
              ),
              Container(
                height: 50,
                width: 50,
                color: const Color.fromARGB(255, 39, 17, 40),
              ),
              Container(
                height: 50,
                width: 50,
                color: const Color.fromARGB(255, 190, 23, 168),
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.orange,
              ),
            ]),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 7),
              width: x,
              color: Colors.blue,
              child: Wrap(
                direction: Axis.vertical,
                alignment: WrapAlignment.center,

                // crossAxisAlignment: WrapCrossAlignment.end,
                // alignment: WrapAlignment.spaceEvenly,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromARGB(255, 39, 17, 40),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromARGB(255, 190, 23, 168),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Color.fromARGB(255, 181, 129, 51),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromARGB(255, 200, 41, 41),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.orange,
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Color.fromARGB(255, 233, 66, 221),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Color.fromARGB(255, 241, 255, 137),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromARGB(255, 33, 198, 243),
                  ),
                  // Container(
                  //   height: 50,
                  //   width: 50,
                  //   color: const Color.fromARGB(255, 210, 15, 149),
                  // ),
                  Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromARGB(255, 217, 186, 7),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromARGB(255, 39, 17, 40),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromARGB(255, 190, 23, 168),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
