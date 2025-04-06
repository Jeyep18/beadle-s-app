import 'package:flutter/material.dart';
import 'package:prototype1/class_dashboard.dart';
import 'package:prototype1/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {'/class-dashboard': (context) => ClassPage()},
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}
