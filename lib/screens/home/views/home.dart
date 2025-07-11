import 'package:flutter/material.dart';
import 'package:beadles_app/screens/classes/widgets/class_tile.dart';
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
    [
      "CSDC101",
      "ZT11Am",
      "MW 10:30AM - 11:30AM",
      "AL211",
      "Mr. Kurt Sereno",
      "S.Y. 2024-2025",
      "4th Semester",
    ],
    // [
    //   "SOCS102",
    //   "ZC11Am",
    //   "TTH 12:00NN - 1:30PM",
    //   "P211",
    //   "Mr. Michael Roland Hernandez",
    //   "S.Y. 2024-2025",
    //   "2nd Semester",
    // ],
    // [
    //   "THEN101",
    //   "ZT12Am",
    //   "TTH 4:30PM - 6:00PM",
    //   "P116",
    //   "Mr. Juan Bautista Janthe Bagadion",
    //   "S.Y. 2024-2025",
    //   "2nd Semester",
    // ],
  ];

  //delete tile function
  void deleteTile(int index) {
    HapticFeedback.mediumImpact();
    setState(() {
      classList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,
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
            'Beadle\'s++',
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
              onPressed: () {
                //settings page here
                Navigator.pushNamed(context, '/settings-page');
              },
              icon: Icon(Icons.account_circle),
              color: Theme.of(context).colorScheme.tertiary,
              iconSize: 35,
            ),
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 10),
      ),

      extendBodyBehindAppBar: true,
      extendBody: true,

      body: Stack(
        children: [
          // const Positioned.fill(child: BackgroundPage()), // Background page
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
                                duration: 0.4.seconds,
                                delay: 0.1.seconds,
                              ),
                              SlideEffect(
                                duration: 0.3.seconds,
                                begin: Offset(0, -0.3),
                              ),
                            ],
                            child: Text(
                              'Taking Attendance made easy!',
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 16), //GAP
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Animate(
                            effects: [
                              FadeEffect(
                                duration: 0.4.seconds,
                                delay: 0.2.seconds,
                              ),
                              SlideEffect(
                                duration: 0.3.seconds,
                                begin: Offset(0, -0.3),
                              ),
                            ],
                            child: Text(
                              'My Classes:',
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                        ),

                        SizedBox(height: 14),

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
