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
              children: [
                SizedBox(
                  // PADDING FOR APPBAR
                  height: kToolbarHeight + MediaQuery.of(context).padding.top,
                ),
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

                      SizedBox(width: 10), // Gap

                      Expanded(
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
              ],
            ),
          ],
        ),

        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.6, 1),
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ],
              ),
            ),
            child: Icon(Icons.add, size: 30, color: Colors.white),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Container(
              decoration: BoxDecoration(color: Colors.transparent),
              child: BottomAppBar(
                shape: const CircularNotchedRectangle(),
                notchMargin: 8,
                height: 100,
                //child: SizedBox(
                //height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: [
                        IconButton(
                          iconSize: 35,
                          icon: const Icon(Icons.home),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 0,
                          ),
                          onPressed: () {},
                        ),
                        Text('Home', style: TextStyle(fontSize: 5)),
                      ],
                    ),
                    const SizedBox(width: 40), // Gap for FAB
                    Column(
                      children: [
                        IconButton(
                          iconSize: 35,
                          icon: const Icon(Icons.calendar_month),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 0,
                          ),
                          onPressed: () {},
                        ),
                        Text('Calendar', style: TextStyle(fontSize: 5)),
                      ],
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
