import 'package:beadles_app_prototype1/utils/background.dart';
import 'package:beadles_app_prototype1/utils/date_picker.dart';
import 'package:beadles_app_prototype1/utils/save_button.dart';
import 'package:beadles_app_prototype1/utils/student_tile.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassPage extends StatefulWidget {
  final List<List<String>> studentList;

  const ClassPage({super.key, required this.studentList});

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  //delete tile function
  void deleteTile(int index) {
    setState(() {
      widget.studentList.removeAt(index);
    });
  }

  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    // Get the arguments passed from the previous page
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final subjectCode = args['subjectCode'] ?? 'N/A';
    final classSection = args['classSection'] ?? 'N/A';
    final schedule = args['schedule'] ?? 'N/A';
    final roomNumber = args['roomNumber'] ?? 'N/A';
    final professorName = args['professorName'] ?? 'N/A';
    final schoolYear = args['schoolYear'] ?? 'N/A';
    final semester = args['semester'] ?? 'N/A';

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).brightness == Brightness.light
                ? Color.fromARGB(255, 228, 228, 255)
                : Color.fromARGB(255, 0, 7, 27),
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).brightness == Brightness.light
                ? Color.fromARGB(255, 195, 195, 255)
                : Color.fromARGB(255, 0, 7, 27),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle:
              Theme.of(context).brightness == Brightness.dark
                  ? SystemUiOverlayStyle
                      .light // white icons for dark mode
                  : SystemUiOverlayStyle.dark, // black icons for light mode
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.tertiary,
          ),
          centerTitle: true,
          titleSpacing: 0,
          title: Text(
            'Take Attendance',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {
                //opens information page
              },
              color: Theme.of(context).colorScheme.tertiary,
              iconSize: 25,
            ),
            IconButton(
              onPressed: () {
                //menu page here
              },
              icon: Icon(Icons.more_vert),
              color: Theme.of(context).colorScheme.tertiary,
              iconSize: 25,
            ),
          ],
        ),

        extendBodyBehindAppBar: true,
        extendBody: true,

        body: Stack(
          children: [
            const Positioned.fill(child: BackgroundPage()), // Background widget
            //==================================MAIN CONTENT==================================
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  // PADDING FOR APPBAR
                  height: kToolbarHeight + MediaQuery.of(context).padding.top,
                ),
                //CLASS TITLE
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                    left: 10,
                    top: 10,
                    right: 10,
                  ),
                  child: Material(
                    elevation: 6,
                    shadowColor: const Color.fromARGB(31, 0, 0, 0),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    child: Container(
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
                      padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                      width: double.infinity,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '$subjectCode - $classSection',
                                style: Theme.of(
                                  context,
                                ).textTheme.titleMedium?.copyWith(fontSize: 30),
                              ),
                              Text(
                                '$schedule $roomNumber',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Text(
                                '$schoolYear | $semester',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
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

                //MODE AND DATE PICKER
                Padding(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Material(
                          elevation: 6,
                          shadowColor: const Color.fromARGB(36, 0, 0, 0),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent,
                          child: Container(
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
                            padding: const EdgeInsets.only(
                              right: 15.0,
                              left: 15.0,
                              top: 10,
                              bottom: 10,
                            ),
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mode:',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),

                                SizedBox(height: 5),

                                //DROPDOWN BUTTON
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: DropdownButtonFormField<String>(
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                    hint: Text(
                                      'Select Modality',
                                      style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(
                                          255,
                                          0,
                                          0,
                                          0,
                                        ),
                                        fontSize: 14,
                                      ),
                                    ),
                                    decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 6,
                                          ),
                                      filled: true,
                                      fillColor: Color.fromARGB(
                                        255,
                                        245,
                                        244,
                                        255,
                                      ), // Background color
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                          color: Color.fromARGB(
                                            255,
                                            223,
                                            220,
                                            255,
                                          ),
                                          width: 0.5,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                          color: Color.fromARGB(
                                            255,
                                            223,
                                            220,
                                            255,
                                          ),
                                          width: 0.5,
                                        ),
                                      ),
                                    ),
                                    dropdownColor: Color(
                                      0xFFe8e8e8,
                                    ), // Dropdown background color
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    items:
                                        ['Online', 'Face to Face']
                                            .map(
                                              (modality) => DropdownMenuItem(
                                                value: modality,
                                                child: Text(modality),
                                              ),
                                            )
                                            .toList(),
                                    onChanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 14), // Gap

                      Flexible(
                        child: Material(
                          elevation: 6,
                          shadowColor: const Color.fromARGB(36, 0, 0, 0),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent,
                          child: Container(
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
                            padding: const EdgeInsets.only(
                              right: 15.0,
                              left: 15.0,
                              top: 10,
                              bottom: 10,
                            ),
                            height: 85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Date:',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),

                                SizedBox(height: 5),

                                //DROPDOWN BUTTON
                                DatePicker(),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        //PADDING FOR BOTTOM NAV
                        height: MediaQuery.of(context).padding.bottom,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.only(bottom: 15, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Students List: ",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Text(
                              "Mark all present: ",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color:
                                    Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Color(0xFF312c4a)
                                        : Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),

                            SizedBox(width: 5),

                            FlutterSwitch(
                              value: _switchValue,
                              width: 45,
                              height: 25,
                              toggleSize: 20.0,
                              borderRadius: 30.0,
                              padding: 2.0,
                              showOnOff: false,
                              activeColor: Color.fromARGB(122, 63, 81, 181),
                              disabled: false,
                              inactiveColor:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Color.fromARGB(54, 248, 248, 248)
                                      : Color.fromARGB(48, 255, 255, 255),
                              inactiveSwitchBorder: Border.all(
                                color: Color.fromARGB(92, 255, 255, 255),
                              ),
                              activeSwitchBorder: Border.all(
                                color: Color(0xFF3F51B5),
                              ),
                              onToggle: (value) {
                                setState(() {
                                  _switchValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          //List builder students
                          ...widget.studentList.asMap().entries.map(
                            (entry) => StudentTile(
                              studentSurname: entry.value[0],
                              studentGivenName: entry.value[1],
                              studentMiddleInitial: entry.value[2],
                              studentCourse: entry.value[3],
                              studentID: entry.value[4],
                              switchStatus: _switchValue,
                              deleteTileFunction:
                                  (context) => deleteTile(entry.key),
                            ),
                          ),

                          SizedBox(height: 5),

                          //Submit
                          SaveButton(
                            title: "Submit",
                            onPressed: () {
                              //make func here to open dialog box
                            },
                          ),

                          SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  //PADDING BOTTOM NAVIGATION BAR
                  height: MediaQuery.of(context).padding.bottom,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
