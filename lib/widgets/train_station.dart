import 'package:flutter/material.dart';


class TrainStationChangeContainer extends StatelessWidget {
  const TrainStationChangeContainer({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
          border: Border(
              bottom: BorderSide(
                  color: Color.fromARGB(221, 226, 184, 184)))),
      height: screenHeight * 0.08,
      child: Row(
          children: //нажаль тут не можна використати main/crossAxisAlignment через Expanded
              [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerRight,
                height: 60,
                color: const Color.fromARGB(221, 255, 255, 255),
                child: const Text(
                  "Київ-Пас",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  color: const Color.fromARGB(221, 255, 255, 255)),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                height: 60,
                color: const Color.fromARGB(221, 255, 255, 255),
                child: const Text(
                  "Змінити",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(25, 25, 112, 4),
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ]),
    );
  }
}
