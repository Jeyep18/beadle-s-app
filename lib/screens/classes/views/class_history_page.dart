import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class ClassHistoryPage extends StatefulWidget {
  const ClassHistoryPage({super.key});

  @override
  State<ClassHistoryPage> createState() => _ClassHistoryPageState();
}

class _ClassHistoryPageState extends State<ClassHistoryPage> {
  // SAIMO NI LENNARD DIPOTA KA
  // Matalino ka talaga boss

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        systemOverlayStyle:
            Theme.of(context).brightness == Brightness.dark
                ? SystemUiOverlayStyle
                    .light // white icons for dark mode
                : SystemUiOverlayStyle.dark, // black icons for light mode
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.tertiary),
        centerTitle: true,
        titleSpacing: 20,
        title: Text(
          'Class History',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        actions: [
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
