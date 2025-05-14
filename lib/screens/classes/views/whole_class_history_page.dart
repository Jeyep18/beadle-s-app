import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class WholeClassHistoryPage extends StatefulWidget {
  const WholeClassHistoryPage({super.key});

  @override
  State<WholeClassHistoryPage> createState() => _WholeClassHistoryPageState();
}

class _WholeClassHistoryPageState extends State<WholeClassHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        systemOverlayStyle:
            Theme.of(context).brightness == Brightness.dark
                ? SystemUiOverlayStyle.light
                : SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.tertiary),
        centerTitle: false,
        titleSpacing: 20,
        title: Animate(
          effects: [
            FadeEffect(duration: 0.6.seconds),
            SlideEffect(duration: 0.4.seconds, begin: const Offset(-0.1, 0)),
          ],
          child: Text(
            'History',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        actions: [
          Animate(
            effects: [
              FadeEffect(duration: 0.6.seconds),
              SlideEffect(duration: 0.4.seconds, begin: const Offset(0.2, 0)),
            ],
            child: PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: Theme.of(context).colorScheme.tertiary,
              ),
              onSelected: (value) {
                switch (value) {
                  case 'export':
                    // Handle export
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Exporting data...')),
                    );
                    break;
                  case 'settings':
                    // Navigate to settings or handle
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Opening settings...')),
                    );
                    break;
                }
              },
              itemBuilder:
                  (BuildContext context) => [
                    const PopupMenuItem<String>(
                      value: 'export',
                      child: Text('Export Data'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'settings',
                      child: Text('Settings'),
                    ),
                  ],
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

class ClassHistoryCard extends StatelessWidget {
  final String subjectCode;
  final String day;
  final int total;
  final int students;
  final String modality;

  const ClassHistoryCard({
    super.key,
    required this.subjectCode,
    required this.day,
    required this.total,
    required this.students,
    required this.modality,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0, left: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Color.fromARGB(255, 173, 210, 255)
                    : Color.fromARGB(255, 61, 74, 109),
            width: 0.5,
          ),
        ),
        elevation: 3,
        color:
            Theme.of(context).brightness == Brightness.light
                ? Color.fromARGB(255, 234, 243, 255)
                : Color.fromARGB(255, 14, 19, 29),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subjectCode,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),

                  Text(
                    '$day | $modality',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color:
                          Theme.of(context).brightness == Brightness.light
                              ? Color.fromARGB(255, 92, 91, 91)
                              : Color.fromARGB(255, 156, 156, 156),
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),

              const Spacer(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Attendance:',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color:
                          Theme.of(context).brightness == Brightness.light
                              ? Color.fromARGB(255, 92, 91, 91)
                              : Color.fromARGB(255, 156, 156, 156),
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '$total/$students',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFilterChip extends StatefulWidget {
  final String label;
  const MyFilterChip({super.key, required this.label});

  @override
  State<MyFilterChip> createState() => _MyFilterChipState();
}

class _MyFilterChipState extends State<MyFilterChip> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;
    return Animate(
      effects: [
        FadeEffect(duration: 0.4.seconds),
        SlideEffect(
          duration: 0.6.seconds,
          begin: Offset(2, 0),
          curve: Curves.easeOutCubic,
        ),
      ],
      child: FilterChip(
        label: Text(widget.label),

        visualDensity: VisualDensity.compact,
        selected: _selected,
        showCheckmark: false,
        onSelected: (value) {
          setState(() {
            _selected = value;
          });
        },
        shape: StadiumBorder(),
        side: BorderSide(
          color:
              _selected
                  ? (isLight
                      ? Color.fromARGB(255, 0, 99, 207)
                      : Color.fromARGB(255, 130, 180, 255))
                  : (isLight
                      ? Color.fromARGB(255, 78, 78, 78)
                      : Color.fromARGB(255, 199, 199, 199)),
          width: 0.5,
        ),
        labelStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w400,
          color:
              _selected
                  ? (isLight
                      ? Color.fromARGB(255, 0, 99, 207)
                      : Color.fromARGB(255, 130, 180, 255))
                  : (isLight
                      ? Color.fromARGB(255, 78, 78, 78)
                      : Color.fromARGB(255, 199, 199, 199)),
        ),
        selectedColor:
            isLight
                ? Color.fromARGB(255, 234, 243, 255)
                : Color.fromARGB(255, 26, 30, 41),

        backgroundColor:
            isLight
                ? Color.fromARGB(255, 234, 243, 255)
                : Color.fromARGB(255, 26, 30, 41),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      ),
    );
  }
}
