import 'package:flutter/material.dart';
import 'widgets/train_station.dart';
import 'widgets/status_bar.dart';
import 'widgets/trains.dart';
import 'widgets/bottom_menu.dart';



void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: UkrzaliznitsyaSchedule()));
}

class UkrzaliznitsyaSchedule extends StatelessWidget {
  const UkrzaliznitsyaSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context)
            .padding
            .top;                //retrieving the size of the screen without AppBar and top Padding(StatusBar)

    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromRGBO(25, 25, 112, 4),
            title: const Text("Табло",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold))),
        body: Container(
          child: Column(
            children: [
              //1
              TrainStationChangeContainer(screenHeight: screenHeight),

              StatusBar(screenHeight: screenHeight),

              TrainList(screenHeight: screenHeight),
                        
              BottomMenu(screenHeight: screenHeight),  
            ],
          ),
        ));
  }
}

