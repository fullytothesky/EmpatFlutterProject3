import 'package:flutter/material.dart';



class StatusBar extends StatelessWidget {
  const StatusBar({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.07,                 //size
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color.fromARGB(221, 219, 197, 197)))),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 13),
              height: 50,
              color: Colors.white,                          //color
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Відправлення",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(25, 25, 112, 4))),
                    Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                            color: Color.fromRGBO(25, 25, 112, 4)),
                        height: 4,
                        width: 150)
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: const Text("Прибуття",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 110, 109, 109))),
            ),
          )
        ],
      ),
    );
  }
}

