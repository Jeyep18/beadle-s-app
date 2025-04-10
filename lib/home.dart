import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:beadles_app_prototype1/utils/class_tile.dart';
import 'package:beadles_app_prototype1/utils/create_new_class_popup.dart';
import 'package:flutter/rendering.dart';

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
      "Prof. Angelo Melecio Agawa",
    ],
    [
      "SOCS102",
      "ZC11Am",
      "TTH 12:00PM - 1:30PM",
      "P211",
      "Prof. Michael Roland Hernandez",
    ],
  ];

  //create new class
  void createNewClass() {
    showDialog(
      context: context,
      builder: (context) {
        return CreateNewClassPopup();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: const Color.fromARGB(255, 0, 0, 0)),
        centerTitle: false,
        titleSpacing: 0,
        title: Text(
          'Beadle\'s App',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.book),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              //for opening profile page
            },
            color: const Color.fromARGB(255, 3, 3, 3),
            iconSize: 30,
          ),
          IconButton(onPressed: () {
            //settings page here
          }, icon: Icon(Icons.settings), iconSize: 30,)
        ],
        actionsPadding: const EdgeInsets.only(right: 10),
      ),
      
      
      floatingActionButton: FloatingActionButton(
        onPressed: createNewClass,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.6, 1),
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
              ],
            ),
          ),
          child: Icon(Icons.add, size: 30, color: Colors.white),
        ),
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

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Taking Attendance made easy!', 
                      textAlign: TextAlign.start, 
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
          
                    SizedBox(height: 18,),
          
                    Text(
                      'My Classes:',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
          
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: classList.length,
                itemBuilder: (context, index) {
                  return ClassTile(
                    subjectCode: classList[index][0],
                    classSection: classList[index][1],
                    schedule: classList[index][2],
                    roomNumber: classList[index][3],
                    professorName: classList[index][4],
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
