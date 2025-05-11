import 'package:beadles_app/utils/background.dart';
import 'package:beadles_app/utils/save_button.dart';
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
                children: [
                  SizedBox(
                    //PADDING APP BAR
                    height: kToolbarHeight + MediaQuery.of(context).padding.top,
                  ),

                  SizedBox(height: 50),

                  //dapat may icon igdi
                  SizedBox(height: 80),

                  Text(
                    "Email has been sent!",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 30),
                  ),

                  //mga text field shit

                  //back to sign in
                  SaveButton(
                    title: "Back to Sign in",
                    onPressed: () {
                      //go to login
                      Navigator.pushNamed(context, '/login-page');
                    },
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
