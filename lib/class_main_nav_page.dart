import 'package:beadles_app/class_dashboard.dart';
import 'package:beadles_app/class_history_page.dart';
import 'package:beadles_app/main_page.dart';
import 'package:beadles_app/utils/background.dart';
import 'package:beadles_app/utils/create_new_student_bottom_sheet.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_glow/flutter_glow.dart';

class ClassMainNavPage extends StatefulWidget {
  const ClassMainNavPage({super.key});

  @override
  State<ClassMainNavPage> createState() => _ClassMainNavPageState();
}

class _ClassMainNavPageState extends State<ClassMainNavPage> {
  final List<List<String>> studentList = [
    ["Sahur", "Tung Tung", "Tung", "BS Computer Science", "100101010"],
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
  final PageController _pageController = PageController();

  //widget pages
  late final List<Widget> _pages;

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
        child: GlowContainer(
          blurRadius: 40,
          glowColor: Theme.of(context).colorScheme.primary.withAlpha(150),
          borderRadius: BorderRadius.circular(50),
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
      ),

      body: Container(
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
        child: Stack(
          children: [
            const Positioned.fill(child: BackgroundPage()), // Background page
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => currentPage = index);
              },
              children: _pages,
            ),
          ],
        ),
      ),

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
                      GestureDetector(
                        onTap: () {
                          if (currentPage != 0) {
                            _pageController.animateToPage(
                              0,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: GlowIcon(
                          size: 50,
                          Icons.group_rounded,
                          blurRadius: 10,
                          glowColor:
                              currentPage == 0
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.transparent,
                          color:
                              currentPage == 0
                                  ? Color.fromARGB(255, 103, 125, 255)
                                  : Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Color.fromARGB(255, 53, 64, 99)
                                  : Color.fromARGB(255, 198, 212, 255),
                        ),
                      ),

                      const SizedBox(width: 5), // Gap for FAB

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (currentPage != 1) {
                              _pageController.animateToPage(
                                1,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: 2,
                            top: 3,
                            left: 5,
                            right: 5,
                          ),
                          child: GlowIcon(
                            Icons.calendar_month_rounded,
                            size: 45,
                            blurRadius: 10,
                            glowColor:
                                currentPage == 1
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.transparent,
                            color:
                                currentPage == 1
                                    ? Color.fromARGB(255, 103, 125, 255)
                                    : Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Color.fromARGB(255, 53, 64, 99)
                                    : Color.fromARGB(255, 198, 212, 255),
                          ),
                        ),
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
