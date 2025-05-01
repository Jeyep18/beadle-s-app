import 'package:beadles_app_prototype1/home.dart';
import 'package:beadles_app_prototype1/utils/create_new_class_bottom_sheet.dart';
import 'package:beadles_app_prototype1/whole_class_history_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  //widget pages
  final List _pages = [HomePage(), WholeClassHistoryPage()];

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
        onPressed: () => createNewClass(context),
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
                            icon: const Icon(Icons.home_rounded),
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
                            icon: const Icon(Icons.calendar_month_outlined),
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

    const double notchRadius = 30.0; // Should match FAB radius
    const double notchMargin = 6.0;
    //const double notchDepth = 15.0; // How deep the notch dips

    final double notchCenter = size.width / 2;
    final double notchStart = notchCenter - notchRadius - notchMargin;
    final double notchEnd = notchCenter + notchRadius + notchMargin;

    final Path path = Path();

    // Start drawing from top-left with rounded corners
    path.moveTo(borderRadius, 0);

    // Top line to notch start (with a small curve before the notch)
    path.lineTo(notchStart - 15, 0); // Extend slightly before the curve
    path.quadraticBezierTo(
      notchStart,
      0,
      notchStart,
      10,
    ); // Smooth curve into notch

    // Draw the U-shaped notch (semicircle)
    path.arcToPoint(
      Offset(notchEnd, 10),
      radius: Radius.circular(notchRadius + notchMargin + 1.5),
      clockwise: false,
    );

    // Smooth curve out of the notch back to the top line
    path.quadraticBezierTo(notchEnd, 0, notchEnd + 15, 0);
    path.lineTo(size.width - borderRadius, 0);

    // Top-right corner
    path.arcToPoint(
      Offset(size.width, borderRadius),
      radius: Radius.circular(borderRadius),
      clockwise: true,
    );

    // Right side
    path.lineTo(size.width, size.height - borderRadius);

    // Bottom-right corner
    path.arcToPoint(
      Offset(size.width - borderRadius, size.height),
      radius: Radius.circular(borderRadius),
      clockwise: true,
    );

    // Bottom side
    path.lineTo(borderRadius, size.height);

    // Bottom-left corner
    path.arcToPoint(
      Offset(0, size.height - borderRadius),
      radius: Radius.circular(borderRadius),
      clockwise: true,
    );

    // Left side
    path.lineTo(0, borderRadius);

    // Top-left corner
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
