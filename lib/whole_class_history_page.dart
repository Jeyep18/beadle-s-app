import 'dart:ui';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'History Page',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        backgroundColor: Colors.transparent,
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
        ],
      ),
    );
  }
}
