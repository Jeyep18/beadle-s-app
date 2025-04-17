import 'dart:ui';
import 'package:beadles_app_prototype1/utils/background.dart';
import 'package:beadles_app_prototype1/utils/date_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassPage extends StatelessWidget {
  const ClassPage({super.key});

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

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            Theme.of(context).brightness == Brightness.dark
                ? SystemUiOverlayStyle
                    .light // white icons for dark mode
                : SystemUiOverlayStyle.dark, // black icons for light mode
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.tertiary),
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

      body: Stack(
        children: [
          BackgroundPage(), // Background widget
          //==================================MAIN CONTENT==================================
          Column(
            children: [
              //CLASS TITLE
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                child: Material(
                  elevation: 6,
                  shadowColor: const Color.fromARGB(31, 0, 0, 0),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x40E8E8E8),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xFFE8E8E8)),
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

              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Material(
                        elevation: 6,
                        shadowColor: const Color.fromARGB(36, 0, 0, 0),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x40E8E8E8),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xFFE8E8E8)),
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
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: DropdownButtonFormField<String>(
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                  ),
                                  hint: Text(
                                    'Select Modality',
                                    style: GoogleFonts.poppins(
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 14,
                                    ),
                                  ),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 6,
                                    ),
                                    filled: true,
                                    fillColor:
                                        Theme.of(context).colorScheme.tertiary,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(
                                          255,
                                          117,
                                          117,
                                          117,
                                        ),
                                        width: 1,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(
                                          255,
                                          117,
                                          117,
                                          117,
                                        ),
                                        width: 1,
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

                    SizedBox(width: 10), // Gap

                    Expanded(
                      child: Material(
                        elevation: 6,
                        shadowColor: const Color.fromARGB(36, 0, 0, 0),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x40E8E8E8),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xFFE8E8E8)),
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

                              SizedBox(height: 6),

                              //DROPDOWN BUTTON
                              DatePicker(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
