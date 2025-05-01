import 'package:beadles_app_prototype1/class_dashboard.dart';
import 'package:beadles_app_prototype1/class_history_page.dart';
import 'package:beadles_app_prototype1/main_page.dart';
import 'package:beadles_app_prototype1/utils/create_new_student_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassMainNavPage extends StatefulWidget {
  const ClassMainNavPage({super.key});

  @override
  State<ClassMainNavPage> createState() => _ClassMainNavPageState();
}

class _ClassMainNavPageState extends State<ClassMainNavPage> {
  final List<List<String>> studentList = [
    ["Espiritu", "John Francis", "M.", "BS Computer Science", "202400614"],
  ];

  //controllers
  final _firstNameController = TextEditingController();
  final _middleInitialController = TextEditingController();
  final _courseController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _idController = TextEditingController();

  //create new student
  void createNewStudent(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return CreateNewStudentBottomSheet(
          firstNameController: _firstNameController,
          middleInitialController: _middleInitialController,
          courseController: _courseController,
          lastNameController: _lastNameController,
          idController: _idController,
          onCreate: () {
            setState(() {
              studentList.add([
                _lastNameController.text.trim(),
                _firstNameController.text.trim(),
                _middleInitialController.text.trim(),
                _courseController.text.trim(),
                _idController.text.trim(),
              ]);
            });

            // Clear text fields after adding
            _firstNameController.clear();
            _middleInitialController.clear();
            _courseController.clear();
            _lastNameController.clear();
            _idController.clear();
          },
        );
      },
    );
  }

  //current page
  int currentPage = 0;

  //widget pages
  late final List _pages;

  @override
  void initState() {
    super.initState();
    _pages = [ClassPage(studentList: studentList), ClassHistoryPage()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,

      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () => createNewStudent(context),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Color.fromARGB(158, 63, 81, 181),
              width: 1,
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).brightness == Brightness.light
                    ? Color.fromARGB(244, 80, 103, 231)
                    : Color.fromARGB(151, 63, 81, 181),

                Theme.of(context).brightness == Brightness.light
                    ? Color.fromARGB(181, 57, 72, 160)
                    : Color.fromARGB(108, 40, 51, 117),
              ],
            ),
          ),
          child: Icon(Icons.add, size: 35, color: const Color(0xFFF7F7F7)),
        ),
      ),

      body: _pages[currentPage],

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomPaint(
                painter: NotchedBorderPainter(
                  borderColor:
                      Theme.of(context).brightness == Brightness.light
                          ? Color.fromARGB(255, 173, 210, 255)
                          : Color.fromARGB(255, 61, 74, 109),
                ),
                child: Container(height: 90, color: Colors.transparent),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BottomAppBar(
                  color:
                      Theme.of(context).brightness == Brightness.light
                          ? Color.fromARGB(255, 234, 243, 255)
                          : Color.fromARGB(255, 26, 30, 41),
                  shape: const CircularNotchedRectangle(),
                  notchMargin: 8,
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: [
                          IconButton(
                            iconSize: 45,
                            icon: const Icon(Icons.group),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 0,
                              vertical: 0,
                            ),
                            onPressed: () {
                              setState(() => currentPage = 0);
                            },
                            color:
                                currentPage == 0
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context).colorScheme.tertiary,
                          ),
                          Text(
                            'Students',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color:
                                  currentPage == 0
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 5), // Gap for FAB

                      Column(
                        children: [
                          IconButton(
                            iconSize: 40,
                            icon: const Icon(Icons.calendar_month),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 0,
                              vertical: 0,
                            ),
                            onPressed: () {
                              setState(() => currentPage = 1);
                            },
                            color:
                                currentPage == 1
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context).colorScheme.tertiary,
                          ),

                          Text(
                            'History',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color:
                                  currentPage == 0
                                      ? Theme.of(context).colorScheme.tertiary
                                      : Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
