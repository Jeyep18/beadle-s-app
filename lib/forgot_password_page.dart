import 'package:beadles_app/utils/background.dart';
import 'package:beadles_app/utils/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
                    "Forgot Password",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 30),
                  ),

                  //mga text field shit

                  //send to email sent
                  SaveButton(
                    title: "Send Email",
                    onPressed: () {
                      //go to email sent page
                      Navigator.pushNamed(context, '/email-sent-page');
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
