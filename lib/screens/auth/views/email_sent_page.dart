import 'package:beadles_app/core/widgets/background.dart';
import 'package:beadles_app/core/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailSentPage extends StatelessWidget {
  const EmailSentPage({super.key});

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
          backgroundColor: Colors.transparent,
        ),

        extendBodyBehindAppBar: true,
        extendBody: true,

        body: Stack(
          children: [
            const Positioned.fill(child: BackgroundPage()),
            //==================================MAIN CONTENT==================================
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    //PADDING APP BAR
                    height: kToolbarHeight + MediaQuery.of(context).padding.top,
                  ),

                  SizedBox(height: 65),

                  Icon(
                    Icons.mark_email_unread_outlined,
                    size: 120,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Email has been sent!",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 30,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Please check your inbox and follow the\ninstructions to reset your password",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 15,
                      color: Color.fromARGB(255, 144, 140, 175),
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SaveButton(
                      title: "Back to Sign in",
                      onPressed: () {
                        //go to login
                        HapticFeedback.mediumImpact();
                        Navigator.pushNamed(context, '/login-page');
                      },
                    ),
                  ),

                  SizedBox(height: 30),

                  Text(
                    "Didn't receive the link?",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 15,
                      color:
                          Theme.of(context).brightness == Brightness.light
                              ? Color.fromARGB(255, 50, 45, 83)
                              : Color.fromARGB(255, 144, 140, 175),
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 0,
                    children: [
                      Icon(
                        Icons.refresh_rounded,
                        color:
                            Theme.of(context).brightness == Brightness.light
                                ? Color.fromARGB(255, 103, 89, 180)
                                : Color.fromARGB(255, 103, 89, 180),
                        size: 24,
                      ),
                      TextButton(
                        onPressed: () {
                          HapticFeedback.lightImpact();
                          //wala
                        },
                        child: Text(
                          "Resend",
                          style: Theme.of(
                            context,
                          ).textTheme.titleSmall?.copyWith(
                            fontSize: 15,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(255, 103, 89, 180)
                                    : Color.fromARGB(255, 103, 89, 180),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    //PADDING BOTTOM NAVIGATION BAR
                    height: MediaQuery.of(context).padding.bottom,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
