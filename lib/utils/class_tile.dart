import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassTile extends StatelessWidget {
  //required variables
  final String subjectCode;
  final String classSection;
  final String schedule;
  final String roomNumber;
  final String professorName;

  const ClassTile({
    super.key,
    required this.subjectCode,
    required this.classSection,
    required this.schedule,
    required this.roomNumber,
    required this.professorName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the class dashboard page with the arguments
        Navigator.pushNamed(
          context,
          '/class-dashboard',
          arguments: {
            'subjectCode': subjectCode,
            'classSection': classSection,
            'schedule': schedule,
            'roomNumber': roomNumber,
            'professorName': professorName,
          },
        );
      },
      child: Padding(
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
                Color.fromARGB(255, 0, 55, 158),
                Color.fromARGB(255, 10, 96, 255),
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
                  '$subjectCode - $classSection',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                  ),
                ),

                //Schedule Text
                Text(
                  '$schedule $roomNumber',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w400,
                  ),
                ),

                //Professor Name Text
                Text(
                  professorName,
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
      ),
    );
  }
}
