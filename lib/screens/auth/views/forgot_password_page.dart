import 'package:beadles_app/core/widgets/background.dart';
import 'package:beadles_app/core/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController(); // added controller

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
                  ? SystemUiOverlayStyle.light
                  : SystemUiOverlayStyle.dark,
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
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: kToolbarHeight + MediaQuery.of(context).padding.top,
                  ),

                  SizedBox(height: 50),

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.shield_outlined,
                        size: 80,
                        color: Colors.white.withOpacity(0.85),
                      ),
                      Text(
                        '!',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Text(
                    "Forgot Password",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 30,
                      color: Colors.white, // ensure visible in dark mode
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    // added subtitle
                    "Please enter email address associated\nwith your account",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white70,
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  SizedBox(height: 30),

                  Padding(
                    // added email input
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white30),
                      ),
                      child: TextField(
                        controller: emailController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email_outlined, color: Colors.white),
                          hintText: "username@gbox.adnu.edu.ph",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Padding(
                    // wrapped SaveButton to match input width
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: SaveButton(
                      title: "Send Email",
                      onPressed: () {
                        Navigator.pushNamed(context, '/email-sent-page');
                      },
                    ),
                  ),

                  SizedBox(height: 12),

                  TextButton(
                    // added "Try another way"
                    onPressed: () {},
                    child: Text(
                      "Try another way",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),

                  SizedBox(height: MediaQuery.of(context).padding.bottom),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
