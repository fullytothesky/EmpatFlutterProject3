import "package:flutter/material.dart";

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(                                         //shadow
      color: const Color.fromARGB(221, 43, 1, 1),
      shadowColor: const Color.fromARGB(221, 64, 16, 16),
      elevation: 8.0,
      child: Container(
        height: screenHeight * 0.10,
        color: Colors.white,
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: const Padding(
          padding: EdgeInsets.only(top: 7.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(children: [
                  Icon(Icons.search_outlined,
                      size: 30.0, color: Color.fromARGB(255, 110, 109, 109)),
                  Text("Пошук",
                      style: TextStyle(
                          color: Color.fromARGB(255, 110, 109, 109),
                          fontSize: 15))
                ]),
                Column(children: [
                  Icon(
                    Icons.receipt_rounded,
                    size: 30.0,
                    color: Color.fromARGB(255, 110, 109, 109),
                  ),
                  Text("Квитки",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 110, 109, 109)))
                ]),
                Column(children: [
                  Icon(Icons.calendar_today_outlined,
                      size: 30.0, color: Color.fromRGBO(25, 25, 112, 4)),
                  Text("Табло",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromRGBO(25, 25, 112, 4)))
                ]),
                Column(children: [
                  Icon(Icons.person_outline_rounded,
                      size: 30.0, color: Color.fromARGB(255, 110, 109, 109)),
                  Text("Профіль",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 110, 109, 109)))
                ])
              ]),
        ),
      ),
    );
  }
}
