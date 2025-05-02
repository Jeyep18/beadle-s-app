import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
                ? SystemUiOverlayStyle
                    .light // white icons for dark mode
                : SystemUiOverlayStyle.dark, // black icons for light mode
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.tertiary),
        centerTitle: false,
        titleSpacing: 20,
        title: Animate(
          effects: [
            FadeEffect(duration: 0.6.seconds),
            SlideEffect(duration: 0.4.seconds, begin: Offset(-0.1, 0)),
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
              SlideEffect(duration: 0.4.seconds, begin: Offset(0.2, 0)),
            ],
            child: IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {
                //opens information page
              },
              color: Theme.of(context).colorScheme.tertiary,
              iconSize: 25,
            ),
          ),
          Animate(
            effects: [
              FadeEffect(duration: 0.6.seconds),
              SlideEffect(duration: 0.4.seconds, begin: Offset(0.2, 0)),
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
          //const Positioned.fill(child: BackgroundPage()),

          //==================================MAIN CONTENT==================================
          Column(
            children: [
              SizedBox(
                height: kToolbarHeight + MediaQuery.of(context).padding.top,
              ),

              Expanded(
                child: Container(color: Colors.transparent),
              ), //REPLACE THIS WITH CONTENTS

              SizedBox(height: MediaQuery.of(context).padding.bottom),
            ],
          ),
        ],
      ),
    );
  }
}
