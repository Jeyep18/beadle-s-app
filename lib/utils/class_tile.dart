import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassTile extends StatelessWidget {
  const ClassTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
      child: Container(
        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.6, 1),
            colors: <Color>[
              Color.fromARGB(255, 100, 41, 218),
              Color.fromARGB(255, 63, 25, 197),
            ],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 45.0, bottom: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Subject Code
              Text(
                'HCI200 - ZC12Am',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w500,
                ),
              ),

              //Schedule Text
              Text(
                'MW 1:30PM - 3:00PM P116',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w400,
                ),
              ),

              //Professor Name Text
              Text(
                'Mr. Angelo Melecio Agawa',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
