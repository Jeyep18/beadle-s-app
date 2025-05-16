//Ayuson lang design bogas
import 'package:beadles_app/core/widgets/background.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> _launchURL() async {
  if (!await launchUrlString(
    'https://youtu.be/xvFZjo5PgG0?si=gmDuKTdYEluMsIQT',
  )) {
    throw 'Could not launch YouTube video';
  }
}

class BeadlesGuide extends StatelessWidget {
  // final String youtubeUrl = 'https://www.youtube.com/watch?v=MBOa-2b4uQQ';

  const BeadlesGuide({super.key});

  @override
  Widget build(BuildContext context) {
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
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle:
              Theme.of(context).brightness == Brightness.dark
                  ? SystemUiOverlayStyle.light
                  : SystemUiOverlayStyle.dark,
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.tertiary,
          ),
          centerTitle: true,
          titleSpacing: 0,
          title: Text(
            'Beadle\'s Guide',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          backgroundColor: Colors.transparent,
        ),

        body: Stack(
          children: [
            const Positioned.fill(child: BackgroundPage()),

            Column(
              children: [
                SizedBox(
                  height:
                      kToolbarHeight + MediaQuery.of(context).padding.top + 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome, Beadle!",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Your role is important and appreciated. You've got this! "
                          "Remember, you’re not alone—this guide is here to support you every step of the way.",
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "What Beadles Do:",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "• Mark attendance: Present, Late, Absent",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "• Indicate class type: Online or Face-to-Face",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "• Report any issues if needed",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Responsibilities:",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "• Arrive early and be prepared",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "• Confirm the class schedule and modality",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "• Accurately mark attendance",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "• Communicate clearly with classmates and teachers",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 20),

                        Text(
                          "Helpful Tips:",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "• Stay calm and organized.",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "• Ask for help if you're unsure.",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "• Keep track of your tasks with this guide.",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 20),

                        Text(
                          "Watch this quick demo to get started:",
                          style: GoogleFonts.poppins(fontSize: 18),
                        ),
                        SizedBox(height: 8),
                        Center(
                          child: TextButton(
                            onPressed: _launchURL,
                            child: Text(
                              "YouTube Video Demo",
                              style: GoogleFonts.poppins(
                                color: Colors.blue,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).padding.bottom),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
