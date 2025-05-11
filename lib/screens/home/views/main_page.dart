import 'package:beadles_app/screens/home/views/home.dart';
import 'package:beadles_app/core/widgets/background.dart';
import 'package:beadles_app/screens/classes/widgets/create_new_class_bottom_sheet.dart';
import 'package:beadles_app/screens/classes/views/whole_class_history_page.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_glow/flutter_glow.dart';

//THIS IS THE MAIN PAGE OF THE APP
//IT CONTAINS THE BOTTOM NAVIGATION BAR AND THE FLOATING ACTION BUTTON

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //create new class
  void createNewClass(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return const CreateNewClassBottomsheet();
      },
    );
  }

  //current page
  int currentPage = 0;
  final PageController _pageController = PageController();

  //widget pages
  final List<Widget> _pages = [HomePage(), WholeClassHistoryPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () => createNewClass(context),
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
                    //BOTTOM NAV ICONS ==============================
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
                          Icons.home_rounded,
                          size: 50,
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

// Custom painter for the notched border =========================================================================

class NotchedBorderPainter extends CustomPainter {
  final Color borderColor;
  final double borderRadius;

  NotchedBorderPainter({required this.borderColor, this.borderRadius = 24.0});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint =
        Paint()
          ..color = borderColor
          ..strokeWidth = 1.0
          ..style = PaintingStyle.stroke;

    const double notchRadius = 30.0;
    const double notchMargin = 6.0;

    final double notchCenter = size.width / 2;
    final double notchStart = notchCenter - notchRadius - notchMargin;
    final double notchEnd = notchCenter + notchRadius + notchMargin;

    final Path path = Path();

    path.moveTo(borderRadius, 0);

    path.lineTo(notchStart - 15, 0);
    path.quadraticBezierTo(notchStart, 0, notchStart, 10);

    path.arcToPoint(
      Offset(notchEnd, 10),
      radius: Radius.circular(notchRadius + notchMargin + 1.5),
      clockwise: false,
    );

    path.quadraticBezierTo(notchEnd, 0, notchEnd + 15, 0);
    path.lineTo(size.width - borderRadius, 0);

    path.arcToPoint(
      Offset(size.width, borderRadius),
      radius: Radius.circular(borderRadius),
      clockwise: true,
    );

    path.lineTo(size.width, size.height - borderRadius);

    path.arcToPoint(
      Offset(size.width - borderRadius, size.height),
      radius: Radius.circular(borderRadius),
      clockwise: true,
    );

    path.lineTo(borderRadius, size.height);

    path.arcToPoint(
      Offset(0, size.height - borderRadius),
      radius: Radius.circular(borderRadius),
      clockwise: true,
    );

    path.lineTo(0, borderRadius);

    path.arcToPoint(
      Offset(borderRadius, 0),
      radius: Radius.circular(borderRadius),
      clockwise: true,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
