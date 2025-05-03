import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:beadles_app_prototype1/utils/background.dart';

class WholeClassHistoryPage extends StatefulWidget {
  const WholeClassHistoryPage({super.key});

  @override
  State<WholeClassHistoryPage> createState() => _WholeClassHistoryPageState();
}

class _WholeClassHistoryPageState extends State<WholeClassHistoryPage> {
  // SAIMO NI LENNARD DIPOTA KA
  // Matalino ka talaga boss

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
            child: IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {
                // opens information page
              },
              color: Theme.of(context).colorScheme.tertiary,
              iconSize: 25,
            ),
          ),
          Animate(
            effects: [
              FadeEffect(duration: 0.6.seconds),
              SlideEffect(duration: 0.4.seconds, begin: const Offset(0.2, 0)),
            ],
            child: IconButton(
              onPressed: () {
                // menu page here
              },
              icon: const Icon(Icons.more_vert),
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
          const Positioned.fill(child: BackgroundPage()),

          //==================================MAIN CONTENT==================================
          Column(
            children: [
              SizedBox(
                height: kToolbarHeight + MediaQuery.of(context).padding.top,
              ),

              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  children: const [
                    SizedBox(height: 10),
                    ClassHistoryCard(
                      subjectCode: 'HCI200 - ZC12Am',
                      schedule: 'MW 1:30PM - 3:00PM FTS',
                      professor: 'Mr. Angelo Miecko Agawa',
                      total: 20,
                    ),
                    SizedBox(height: 12),
                    ClassHistoryCard(
                      subjectCode: 'CSMC121 - ZC12Am',
                      schedule: 'MW 3:00 - 4:30PM P12',
                      professor: 'Mr. Salomon L. Olayta',
                      total: 20,
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
  final String schedule;
  final String professor;
  final int total;

  const ClassHistoryCard({
    super.key,
    required this.subjectCode,
    required this.schedule,
    required this.professor,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    subjectCode,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Total:',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$total',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.more_vert, size: 18),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(schedule, style: Theme.of(context).textTheme.bodySmall),
            Text(professor, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.arrow_drop_down),
            ),
          ],
        ),
      ),
    );
  }
}
