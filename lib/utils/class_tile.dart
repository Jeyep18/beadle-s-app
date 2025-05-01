import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'dart:ui';

class ClassTile extends StatelessWidget {
  //required variables
  final String subjectCode;
  final String classSection;
  final String schedule;
  final String roomNumber;
  final String professorName;
  final String schoolYear;
  final String semester;

  //delete Tile function
  final void Function(BuildContext) deleteTileFunction;

  const ClassTile({
    super.key,
    required this.subjectCode,
    required this.classSection,
    required this.schedule,
    required this.roomNumber,
    required this.professorName,
    required this.schoolYear,
    required this.semester,
    required this.deleteTileFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/class-main-nav-page',
          arguments: {
            'subjectCode': subjectCode,
            'classSection': classSection,
            'schedule': schedule,
            'roomNumber': roomNumber,
            'professorName': professorName,
            'schoolYear': schoolYear,
            'semester': semester,
          },
        );
      },
      child: Animate(
        effects: [
          FadeEffect(duration: 0.6.seconds, delay: 0.6.seconds),
          SlideEffect(duration: 0.4.seconds, begin: Offset(0, 0.2)),
        ],
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 14),
          child: Slidable(
            closeOnScroll: true,
            endActionPane: ActionPane(
              motion: StretchMotion(),
              extentRatio: 0.25,
              children: [
                CustomSlidableAction(
                  autoClose: true,
                  backgroundColor: Color.fromARGB(38, 255, 0, 0),
                  borderRadius: BorderRadius.circular(15),
                  onPressed: deleteTileFunction,
                  child: Icon(Icons.delete, size: 40, color: Color(0xFFF7F7F7)),
                ),
              ],
            ),
            child: Material(
              elevation: 6,
              shadowColor: const Color.fromARGB(31, 0, 0, 0),
              borderRadius: BorderRadius.circular(15),
              color: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                  child: Container(
                    padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(48, 255, 255, 255),
                          Color.fromARGB(45, 126, 126, 126),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromARGB(92, 255, 255, 255),
                      ),
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
          ),
        ),
      ),
    );
  }
}
