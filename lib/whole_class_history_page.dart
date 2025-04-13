import 'dart:ui';

import 'package:flutter/material.dart';

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
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.tertiary),
        centerTitle: false,
        titleSpacing: 20,
        title: Text(
          'History Page',
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
            filter: ImageFilter.blur(sigmaX: 300.0, sigmaY: 300.0),
            child: Container(),
          ),
        ],
      ),
    );
  }
}
