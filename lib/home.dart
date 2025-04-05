import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: Column(
        children: [
          //Text "My Classes:"
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'My Classes:',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 86, 95, 122),
              ),
            ),
          ),

          //class list
          ListView(
            children: [
              //subject 1
              Container(width: double.infinity, height: 100, color: Colors.red),
            ],
          ),
        ],
      ),
    );
  }
}
