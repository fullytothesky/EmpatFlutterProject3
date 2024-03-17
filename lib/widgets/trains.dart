import 'package:flutter/material.dart';

class TrainList extends StatelessWidget {
  const TrainList({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.75,
      padding: const EdgeInsets.only(right: 30.0, left: 30.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,                            //background
            colors: [
              Color.fromARGB(31, 220, 181, 181),
              Color.fromARGB(95, 183, 168, 168)
            ]),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Потяг",
                      style:
                          TextStyle(color: Color.fromARGB(255, 110, 109, 109)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text("Сполучення",
                        style: TextStyle(
                            color: Color.fromARGB(255, 110, 109, 109))),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.only(left: 22),
                      child: const Text("Час",
                          style: TextStyle(
                              color: Color.fromARGB(255, 110, 109, 109)))),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Колія",
                      style:
                          TextStyle(color: Color.fromARGB(255, 110, 109, 109)),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 60,
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "771K",
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 60,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Київ"),
                          Row(
                            children: [
                              Icon(Icons.arrow_forward_sharp),
                              Text("Хмельницький"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 60,
                      alignment: Alignment.topRight,
                      child: const Text("14:08"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 60,
                      alignment: Alignment.topRight,
                      child: const Text("11",
                          style: TextStyle(
                              color: Color.fromARGB(255, 110, 109, 109))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(221, 219, 197, 197)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text("749O"),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Київ"),
                          Row(
                            children: [
                              Icon(Icons.arrow_forward_sharp),
                              Text("Ужгород")
                            ],
                          ),
                        ]),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: const Text("13:20"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: const Text("10"),
                  ),
                )
              ]),
            ),
            Container(
              height: 1,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(221, 219, 197, 197)),
            )
          ],
        ),
      ),
    );
  }
}
