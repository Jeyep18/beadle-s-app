import 'dart:ui';

import 'package:flutter/material.dart';


class WholeClassHistoryPage extends StatefulWidget {
  const WholeClassHistoryPage({super.key});

  @override
  State<WholeClassHistoryPage> createState() => _WholeClassHistoryPageState();
}

class _WholeClassHistoryPageState extends State<WholeClassHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: const Color.fromARGB(255, 0, 0, 0)),
        centerTitle: true,
        titleSpacing: 0,
        title: Text(
          'Take Attendance',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              //opens information page
            },
            color: const Color.fromARGB(255, 3, 3, 3),
            iconSize: 30,
          ),
          IconButton(onPressed: () {
            //menu page here
          }, icon: Icon(Icons.menu), iconSize: 30,)
        ],
        actionsPadding: const EdgeInsets.only(right: 10),
      ),


      body: Stack(
        children: [
          Align(
            alignment: Alignment(85,-0.7),
            child: Container(
              height: 400,
              width: 400,
              decoration:BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.secondary,
              )
            ),
          ),

          Align(
            alignment: Alignment(-95,-0.2),
            child: Container(
              height: 400,
              width: 400,
              decoration:BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary,
              )
            ),
          ),

          Align(
            alignment: Alignment(60,1.5),
            child: Container(
              height: 300,
              width: 400,
              decoration:BoxDecoration(
                shape: BoxShape.rectangle,
                color: Theme.of(context).colorScheme.primary,
              )
            ),
          ),

          BackdropFilter(filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 200.0),
          child: Container(),),
        ]
      )
    );
  }
}