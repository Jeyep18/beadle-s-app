import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype1/utils/class_tile.dart';
import 'package:prototype1/utils/create_new_class_popup.dart';

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
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'Beadles App',
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromARGB(255, 10, 96, 255),
                Color.fromARGB(255, 0, 55, 158),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Handle settings action
            },
            color: Colors.white,
            iconSize: 30,
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 10),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 10, 96, 255),
              ),
              child: Text(
                'Beadles App',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Handle settings action
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(235, 247, 247, 247),
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
                Color.fromARGB(255, 10, 96, 255),
                Color.fromARGB(255, 0, 65, 185),
              ],
            ),
          ),
          child: Icon(Icons.add, size: 30, color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text(
              'My Classes:',
              textAlign: TextAlign.right,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 86, 95, 122),
              ),
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
    );
  }
}
