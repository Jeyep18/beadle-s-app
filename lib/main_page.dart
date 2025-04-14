import 'package:beadles_app_prototype1/home.dart';
import 'package:beadles_app_prototype1/utils/create_new_class_popup.dart';
import 'package:beadles_app_prototype1/whole_class_history_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//hello boss

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //create new class
  void createNewClass() {
    showDialog(
      context: context,
      builder: (context) {
        return CreateNewClassPopup();
      },
    );
  }

  //current page
  int currentPage = 0;

  //widget pages
  final List _pages = [HomePage(), WholeClassHistoryPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: createNewClass,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
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
                Theme.of(context).colorScheme.primary,
              ],
            ),
          ),
          child: Icon(
            Icons.add,
            size: 35,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
      ),

      body: _pages[currentPage],

      // bottomNavigationBar: SizedBox(
      //   height: 100,
      //   child: BottomNavigationBar(

      //     currentIndex: currentPage,
      //     onTap: (value) {
      //       setState(() {
      //         currentPage = value;
      //       });
      //     },
      //     items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.calendar_month),
      //         label: "History",
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Container(
              decoration: BoxDecoration(color: Colors.transparent),
              child: BottomAppBar(
                color: Color(0x40E8E8E8),
                shape: const CircularNotchedRectangle(),
                notchMargin: 10,
                height: 90,
                //child: SizedBox(
                //height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: [
                        IconButton(
                          iconSize: 45,
                          icon: const Icon(Icons.home),
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
                          'Home',
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
          ),
        ),
      ),
    );
  }
}
