import 'package:beadles_app/core/widgets/background.dart';
import 'package:beadles_app/core/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final emailController = TextEditingController(); // added controller

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
          scrolledUnderElevation: 0,
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
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height:
                          kToolbarHeight + MediaQuery.of(context).padding.top,
                    ),

                    SizedBox(height: 65),

                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          Icons.shield_outlined,
                          size: 120,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                        Text(
                          '!',
                          style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Text(
                      "Forgot Password",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 30,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Please enter email address associated\nwith your account",
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
                      child: SizedBox(
                        height: 60,
                        child: TextField(
                          textInputAction: TextInputAction.next,
                          //controller: widget.lastNameController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              size: 23,
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Color.fromARGB(195, 55, 42, 114)
                                      : Color.fromARGB(118, 157, 146, 212),
                            ),
                            hintText: 'Email address',
                            hintStyle: Theme.of(
                              context,
                            ).textTheme.labelSmall?.copyWith(
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Color.fromARGB(195, 55, 42, 114)
                                      : Color.fromARGB(118, 157, 146, 212),
                            ),
                            filled: true,
                            fillColor:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(255, 239, 246, 250)
                                    : Color.fromARGB(43, 63, 81, 181),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color:
                                    Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Color.fromARGB(195, 55, 42, 114)
                                        : Color.fromARGB(118, 157, 146, 212),
                                width: 0.5,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: SaveButton(
                        title: "Send email",
                        onPressed: () {
                          HapticFeedback.mediumImpact();
                          Navigator.pushNamed(context, '/email-sent-page');
                        },
                      ),
                    ),

                    SizedBox(height: 18),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? const Color.fromARGB(195, 55, 42, 114)
                                    : const Color.fromARGB(118, 157, 146, 212),
                            width: 0.5,
                          ),
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? const Color.fromARGB(255, 239, 246, 250)
                                  : const Color.fromARGB(43, 63, 81, 181),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.92,
                              55,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            //wala
                            HapticFeedback.mediumImpact();
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Text(
                                "Try another way",
                                style: Theme.of(
                                  context,
                                ).textTheme.labelSmall?.copyWith(
                                  color:
                                      Theme.of(context).brightness ==
                                              Brightness.light
                                          ? const Color.fromARGB(
                                            195,
                                            55,
                                            42,
                                            114,
                                          )
                                          : const Color.fromARGB(
                                            118,
                                            224,
                                            217,
                                            255,
                                          ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      //PADDING BOTTOM NAVIGATION BAR DONUT MOVE
                      height: MediaQuery.of(context).padding.bottom + 285,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
