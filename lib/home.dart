import 'dart:ui';
import 'package:beadles_app_prototype1/whole_class_history_page.dart';
import 'package:flutter/material.dart';
import 'package:beadles_app_prototype1/utils/class_tile.dart';
import 'package:beadles_app_prototype1/utils/create_new_class_popup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List of classes
  List classList = [
    [
      "HCI200",
      "ZC12Am",
      "MW 1:30PM - 3:00PM",
      "P116",
      "Prof. Angelo Melecio Agawa",
    ],
    [
      "SOCS102",
      "ZC11Am",
      "TTH 12:00PM - 1:30PM",
      "P211",
      "Prof. Michael Roland Hernandez",
    ],
  ];

  //create new class
  void createNewClass() {
    showDialog(
      context: context,
      builder: (context) {
        return CreateNewClassPopup();
      },
    );
  }

  //current page
  int currentPage = 0;

  //widget pages
  final List<Widget> pages = [const HomePage(), WholeClassHistoryPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(color: const Color.fromARGB(255, 0, 0, 0)),
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          'Beadle\'s App',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.book),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              //for opening profile page
            },
            color: const Color.fromARGB(255, 3, 3, 3),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              //settings page here
            },
            icon: Icon(Icons.settings),
            iconSize: 30,
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 10),
      ),

      body: Stack(
        children: [
          Align(
            alignment: Alignment(85, -0.7),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),

          Align(
            alignment: Alignment(-95, -0.2),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),

          Align(
            alignment: Alignment(85, 1.5),
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),

          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 200.0),
            child: Container(),
          ),

          //==================================MAIN CONTENT==================================
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5,
                top: 10,
                right: 5,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Taking Attendance made easy!',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'My Classes:',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  SizedBox(height: 10),

                  //List of classes
                  ...classList.map(
                    (cls) => ClassTile(
                      subjectCode: cls[0],
                      classSection: cls[1],
                      schedule: cls[2],
                      roomNumber: cls[3],
                      professorName: cls[4],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
