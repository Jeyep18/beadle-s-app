import 'package:beadles_app/screens/classes/views/whole_class_history_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ClassHistoryPage extends StatefulWidget {
  const ClassHistoryPage({super.key});

  @override
  State<ClassHistoryPage> createState() => _ClassHistoryPageState();
}

class _ClassHistoryPageState extends State<ClassHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        systemOverlayStyle:
            Theme.of(context).brightness == Brightness.dark
                ? SystemUiOverlayStyle.light
                : SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.tertiary),
        centerTitle: true,
        titleSpacing: 20,
        title: Animate(
          effects: [
            FadeEffect(duration: 0.3.seconds),
            SlideEffect(
              duration: 0.4.seconds,
              begin: Offset(0, -0.6),
              curve: Curves.easeOutCubic,
            ),
          ],
          child: Text(
            'Class History',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        actions: [
          Animate(
            effects: [
              FadeEffect(duration: 0.3.seconds),
              SlideEffect(
                duration: 0.4.seconds,
                begin: Offset(0, -0.6),
                curve: Curves.easeOutCubic,
              ),
            ],
            child: IconButton(
              onPressed: () {
                //menu page here
              },
              icon: Icon(Icons.more_vert),
              color: Theme.of(context).colorScheme.tertiary,
              iconSize: 25,
            ),
          ),
        ],
      ),

      extendBodyBehindAppBar: true,
      extendBody: true,

      body: Stack(
        children: [
          //==================================MAIN CONTENT==================================
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: kToolbarHeight + MediaQuery.of(context).padding.top,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 0.0,
                  ),
                  child: Row(
                    children: [
                      MyFilterChip(label: 'Date'),
                      const SizedBox(width: 10),
                      MyFilterChip(label: 'Subject'),
                      const SizedBox(width: 10),
                      MyFilterChip(label: 'Schedule'),
                      const SizedBox(width: 10),
                      MyFilterChip(label: 'Modality'),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      child: Animate(
                        effects: [
                          FadeEffect(duration: 0.3.seconds),
                          SlideEffect(
                            duration: 0.4.seconds,
                            begin: Offset(0, -0.6),
                            curve: Curves.easeOutCubic,
                          ),
                        ],
                        child: Text(
                          'Today',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ),
                    Animate(
                      effects: [
                        FadeEffect(duration: 0.6.seconds),
                        SlideEffect(
                          duration: 0.4.seconds,
                          begin: Offset(1, 0),
                          curve: Curves.easeOutCubic,
                        ),
                      ],
                      child: ClassHistoryCard(
                        subjectCode: 'CSMC102 - ZC11Am',
                        day: 'May 12, 2025',
                        total: 30,
                        students: 30,
                        modality: 'Face to Face',
                      ),
                    ),
                    Animate(
                      effects: [
                        FadeEffect(duration: 0.6.seconds, delay: 0.1.seconds),
                        SlideEffect(
                          duration: 0.4.seconds,
                          begin: Offset(1, 0),
                          curve: Curves.easeOutCubic,
                        ),
                      ],
                      child: ClassHistoryCard(
                        subjectCode: 'HCI200 - ZC12Am',
                        day: 'May 12, 2025',
                        total: 25,
                        students: 35,
                        modality: 'Online',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      child: Animate(
                        effects: [
                          FadeEffect(duration: 0.3.seconds, delay: 0.2.seconds),
                          SlideEffect(
                            duration: 0.4.seconds,
                            begin: Offset(0, -0.6),
                            curve: Curves.easeOutCubic,
                          ),
                        ],
                        child: Text(
                          'Yesterday',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ),

                    Animate(
                      effects: [
                        FadeEffect(duration: 0.6.seconds, delay: 0.2.seconds),
                        SlideEffect(
                          duration: 0.4.seconds,
                          begin: Offset(1, 0),
                          curve: Curves.easeOutCubic,
                        ),
                      ],
                      child: ClassHistoryCard(
                        subjectCode: 'HCI200 - ZC11Am',
                        day: 'May 9, 2025',
                        total: 29,
                        students: 30,
                        modality: 'Face to Face',
                      ),
                    ),

                    Animate(
                      effects: [
                        FadeEffect(duration: 0.6.seconds, delay: 0.3.seconds),
                        SlideEffect(
                          duration: 0.4.seconds,
                          begin: Offset(1, 0),
                          curve: Curves.easeOutCubic,
                        ),
                      ],
                      child: ClassHistoryCard(
                        subjectCode: 'CSMC102 - ZC11Am',
                        day: 'May 9, 2025',
                        total: 23,
                        students: 40,
                        modality: 'Face to Face',
                      ),
                    ),

                    Animate(
                      effects: [
                        FadeEffect(duration: 0.6.seconds, delay: 0.4.seconds),
                        SlideEffect(
                          duration: 0.4.seconds,
                          begin: Offset(1, 0),
                          curve: Curves.easeOutCubic,
                        ),
                      ],
                      child: ClassHistoryCard(
                        subjectCode: 'CSDC200 - ZC12Am',
                        day: 'May 9, 2025',
                        total: 22,
                        students: 30,
                        modality: 'Online',
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: MediaQuery.of(context).padding.bottom),
            ],
          ),
        ],
      ),
    );
  }
}
