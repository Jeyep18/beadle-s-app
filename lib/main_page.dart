import 'package:beadles_app_prototype1/home.dart';
import 'package:beadles_app_prototype1/utils/create_new_class_popup.dart';
import 'package:beadles_app_prototype1/whole_class_history_page.dart';
import 'package:flutter/material.dart';

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
  final List _pages = [
    HomePage(),
    WholeClassHistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: createNewClass,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
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
      
      body: _pages[currentPage],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home), 
              label: "Home",
            ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month), 
              label: "History",  
            ),
        ],
      ),
    );
  }
}