import 'dart:ui';

import 'package:flutter/material.dart';

class ClassPage extends StatelessWidget {
  const ClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.tertiary),
        centerTitle: true,
        titleSpacing: 0,
        title: Text(
          'Take Attendance',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              //opens information page
            },
            color: Theme.of(context).colorScheme.tertiary,
            iconSize: 25,
          ),
          IconButton(
            onPressed: () {
              //menu page here
            },
            icon: Icon(Icons.more_vert),
            color: Theme.of(context).colorScheme.tertiary,
            iconSize: 25,
          ),
        ],
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
            alignment: Alignment(60, 1.5),
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
        ],
      ),
    );
  }
}
