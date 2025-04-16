import 'dart:ui';
import 'package:beadles_app_prototype1/whole_class_history_page.dart';
import 'package:flutter/material.dart';
import 'package:beadles_app_prototype1/utils/class_tile.dart';
import 'package:beadles_app_prototype1/utils/create_new_class_popup.dart';
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
      "Prof. Angelo Melecio Agawa",
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
              },
              icon: Icon(Icons.settings),
              color: Theme.of(context).colorScheme.tertiary,
              iconSize: 30,
            ),
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 5),
      ),

      body: Stack(
        children: [
          Align(
            alignment: Alignment(85, -0.9),
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
            alignment: Alignment(110, 1.5),
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),

          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 200.0, sigmaY: 200.0),
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
                    child: Animate(
                      effects: [
                        FadeEffect(duration: 0.6.seconds, delay: 0.2.seconds),
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
                  SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Animate(
                      effects: [
                        FadeEffect(duration: 0.6.seconds, delay: 0.4.seconds),
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
