import 'dart:ui';
import 'package:beadles_app_prototype1/utils/background.dart';
import 'package:beadles_app_prototype1/whole_class_history_page.dart';
import 'package:flutter/material.dart';
import 'package:beadles_app_prototype1/utils/class_tile.dart';
//import 'package:beadles_app_prototype1/utils/create_new_class_popup.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/services.dart';

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
      "Mr. Angelo Melecio Agawa",
      "S.Y. 2024-2025",
      "2nd Semester",
    ],
    [
      "CSMC101",
      "ZC11Am",
      "TTH 3:00PM - 4:30PM",
      "P211",
      "Mr. Solomon Olayta",
      "S.Y. 2024-2025",
      "2nd Semester",
    ],
  ];

  //current page
  int currentPage = 0;

  //widget pages
  final List<Widget> pages = [const HomePage(), WholeClassHistoryPage()];

  //delete tile function
  void deleteTile(int index) {
    setState(() {
      classList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            Theme.of(context).brightness == Brightness.dark
                ? SystemUiOverlayStyle
                    .light // white icons for dark mode
                : SystemUiOverlayStyle.dark, // black icons for light mode
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.tertiary),
        centerTitle: false,
        titleSpacing: 0,
        title: Animate(
          effects: [
            FadeEffect(duration: 0.6.seconds),
            SlideEffect(duration: 0.4.seconds, begin: Offset(-0.1, 0)),
          ],
          child: Text(
            'Beadle\'s App',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: Animate(
          effects: [
            FadeEffect(duration: 0.6.seconds),
            SlideEffect(duration: 0.4.seconds, begin: Offset(-0.2, 0)),
          ],
          child: Icon(Icons.book),
        ),
        actions: [
          Animate(
            effects: [
              FadeEffect(duration: 0.6.seconds),
              SlideEffect(duration: 0.4.seconds, begin: Offset(0.2, 0)),
            ],
            child: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                //for opening profile page
                Navigator.pushNamed(context, '/profile-page');
              },
              color: Theme.of(context).colorScheme.tertiary,
              iconSize: 30,
            ),
          ),
          Animate(
            effects: [
              FadeEffect(duration: 0.6.seconds),
              SlideEffect(duration: 0.4.seconds, begin: Offset(0.2, 0)),
            ],
            child: IconButton(
              onPressed: () {
                //settings page here
                Navigator.pushNamed(context, '/settings-page');
              },
              icon: Icon(Icons.settings),
              color: Theme.of(context).colorScheme.tertiary,
              iconSize: 30,
            ),
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 5),
      ),

      extendBodyBehindAppBar: true,
      extendBody: true,

      body: Stack(
        children: [
          const Positioned.fill(child: BackgroundPage()), // Background page
          //==================================MAIN CONTENT==================================
          Column(
            children: [
              SizedBox(
                //PADDING APP BAR
                height: kToolbarHeight + MediaQuery.of(context).padding.top,
              ),

              Expanded(
                child: SingleChildScrollView(
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
                          child: Animate(
                            effects: [
                              FadeEffect(
                                duration: 0.6.seconds,
                                delay: 0.2.seconds,
                              ),
                              SlideEffect(
                                duration: 0.4.seconds,
                                begin: Offset(0, 0.3),
                              ),
                            ],
                            child: Text(
                              'Taking Attendance made easy!',
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 18), //GAP
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Animate(
                            effects: [
                              FadeEffect(
                                duration: 0.6.seconds,
                                delay: 0.4.seconds,
                              ),
                              SlideEffect(
                                duration: 0.3.seconds,
                                begin: Offset(0, 0.5),
                              ),
                            ],
                            child: Text(
                              'My Classes:',
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                        ),

                        SizedBox(height: 5),

                        //List of classes
                        ...classList.asMap().entries.map(
                          (entry) => ClassTile(
                            deleteTileFunction:
                                (context) => deleteTile(entry.key),
                            subjectCode: entry.value[0],
                            classSection: entry.value[1],
                            schedule: entry.value[2],
                            roomNumber: entry.value[3],
                            professorName: entry.value[4],
                            schoolYear: entry.value[5],
                            semester: entry.value[6],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                //PADDING BOTTOM NAVIGATION BAR
                height: MediaQuery.of(context).padding.bottom,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
