import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: TextTheme(
      //for app bar title
      headlineLarge: GoogleFonts.poppins(
        fontSize: 22,
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.bold,
      ),

      //for section title [My Classes:, History:, etc.]
      headlineMedium: GoogleFonts.poppins(
        fontSize: 20,
        color: Color(0xFF312c4a),
        fontWeight: FontWeight.w500,
      ),

      //for modal subtitles
      headlineSmall: GoogleFonts.poppins(
        fontSize: 16,
        color: Color(0xFF312c4a),
        fontWeight: FontWeight.w400,
      ),

      //for subject code titles
      titleLarge: GoogleFonts.poppins(
        fontSize: 24,
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w500,
      ),

      //this is under subject code title [schedule and prof name]
      titleMedium: GoogleFonts.poppins(
        fontSize: 14,
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w400,
      ),

      //for buttons
      labelLarge: GoogleFonts.poppins(
        fontSize: 16,
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w600,
      ),

      //for text field hints
      labelSmall: GoogleFonts.poppins(
        fontSize: 14,
        color: const Color.fromARGB(255, 116, 116, 116),
        fontWeight: FontWeight.w400,
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    colorScheme: ColorScheme.light(
      // primary: Color(0xFF3368FA),
      // secondary: Color(0xFF002DAA),
      primary: Color(0xFF3546df),
      secondary: Color(0xFF3546df),
      tertiary: Color.fromARGB(255, 173, 173, 173),
    ),
  );

  //========================== DARK THEME ======================================
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: TextTheme(
      //for app bar title
      headlineLarge: GoogleFonts.poppins(
        fontSize: 22,
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.bold,
      ),

      //for section title [My Classes:, History:, etc.]
      headlineMedium: GoogleFonts.poppins(
        fontSize: 20,
        color: const Color.fromARGB(255, 223, 223, 223),
        fontWeight: FontWeight.w500,
      ),

      //for modal subtitles
      headlineSmall: GoogleFonts.poppins(
        fontSize: 16,
        color: Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w400,
      ),

      //for subject code titles
      titleLarge: GoogleFonts.poppins(
        fontSize: 24,
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w500,
      ),

      //this is under subject code title [schedule and prof name]
      titleMedium: GoogleFonts.poppins(
        fontSize: 14,
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w400,
      ),

      //for buttons
      labelLarge: GoogleFonts.poppins(
        fontSize: 16,
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w600,
      ),

      //for text field hints
      labelSmall: GoogleFonts.poppins(
        fontSize: 14,
        color: const Color.fromARGB(255, 226, 226, 226),
        fontWeight: FontWeight.w400,
      ),
    ),
    scaffoldBackgroundColor: Color(0xFF312c4a),
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    colorScheme: ColorScheme.dark(
      // primary: Color(0xFF002DAA),
      // secondary: Color(0xFF3368FA),
      primary: Color(0xFF3546df),
      secondary: Color(0xFF3546df),
      tertiary: Color.fromARGB(255, 110, 110, 110),
    ),
  );
}
