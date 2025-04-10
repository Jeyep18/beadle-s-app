import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
      child: Animate(
        effects: [
          FadeEffect(duration: 0.6.seconds, delay: 0.6.seconds),
          SlideEffect(duration: 0.4.seconds, begin: Offset(0, 0.2)),
        ],
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
          child: Material(
            elevation: 6,
            shadowColor: const Color.fromARGB(31, 0, 0, 0),
            borderRadius: BorderRadius.circular(15),
            color: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: Color(0x40E8E8E8),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xFFE8E8E8)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 45.0, bottom: 10.0),
                child: FittedBox(
                  fit: BoxFit.contain,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Subject Code
                      Text(
                        '$subjectCode - $classSection',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),

                      //Schedule Text
                      Text(
                        '$schedule $roomNumber',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),

                      //Professor Name Text
                      Text(
                        professorName,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
