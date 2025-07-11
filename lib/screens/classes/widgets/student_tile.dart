import 'package:beadles_app/core/widgets/status_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'dart:ui';

class StudentTile extends StatefulWidget {
  //required var
  final String studentSurname;
  final String studentGivenName;
  final String studentMiddleInitial;
  final String studentCourse;
  final String studentID;

  final bool switchStatus;

  //delete Tile function
  final void Function(BuildContext) deleteTileFunction;

  const StudentTile({
    super.key,
    required this.studentSurname,
    required this.studentGivenName,
    required this.studentMiddleInitial,
    required this.studentCourse,
    required this.studentID,
    required this.switchStatus,
    required this.deleteTileFunction,
  });

  @override
  State<StudentTile> createState() => _StudentTileState();
}

class _StudentTileState extends State<StudentTile> {
  StudentStatus? currentStatus;

  Gradient getTileGradient() {
    switch (currentStatus) {
      case StudentStatus.present:
        return LinearGradient(
          colors: [
            Color.fromARGB(70, 25, 250, 36),
            Color.fromARGB(66, 25, 116, 0),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case StudentStatus.absent:
        return LinearGradient(
          colors: [
            Color.fromARGB(71, 250, 25, 25),
            Color.fromARGB(66, 116, 0, 0),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      case StudentStatus.late:
        return LinearGradient(
          colors: [
            Color.fromARGB(88, 238, 238, 238),
            Color.fromARGB(66, 95, 95, 95),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
      default:
        return LinearGradient(
          colors: [
            Color.fromARGB(48, 255, 255, 255),
            Color.fromARGB(45, 126, 126, 126),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
    }
  }

  @override
  void didUpdateWidget(covariant StudentTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.switchStatus != widget.switchStatus && widget.switchStatus) {
      setState(() {
        currentStatus = StudentStatus.present;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15, right: 12, left: 12),
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
              onPressed: widget.deleteTileFunction,
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
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                  left: 10.0,
                ),
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  gradient: getTileGradient(),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color.fromARGB(92, 255, 255, 255)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Student Picture
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "student photo",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    //Student Details
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.studentSurname,
                            style: Theme.of(
                              context,
                            ).textTheme.titleMedium?.copyWith(
                              height: 0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${widget.studentGivenName} ${widget.studentMiddleInitial}",
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),

                          SizedBox(height: 5),

                          Text(
                            widget.studentCourse,
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall?.copyWith(
                              fontSize: 12,
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Color.fromARGB(255, 49, 49, 49)
                                      : Color.fromARGB(255, 202, 202, 202),
                            ),
                          ),
                          Text(
                            "ID: ${widget.studentID}",
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall?.copyWith(
                              fontSize: 12,
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Color.fromARGB(255, 49, 49, 49)
                                      : Color.fromARGB(255, 202, 202, 202),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 10),

                    //CHECKBOXES
                    Expanded(
                      child: StatusPicker(
                        selectedStatus: currentStatus,
                        onStatusChanged: (status) {
                          setState(() {
                            if (widget.switchStatus) {
                              currentStatus = StudentStatus.present;
                            } else {
                              currentStatus = status;
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
