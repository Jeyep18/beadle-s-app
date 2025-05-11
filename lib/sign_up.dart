import 'package:beadles_app_prototype1/utils/background.dart';
import 'package:beadles_app_prototype1/utils/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;
  bool _obscureText2 = true;

  String password = '';
  String confirmPassword = '';

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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          elevation: 0,
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
            SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                children: [
                  SizedBox(
                    //PADDING APP BAR
                    height: kToolbarHeight + MediaQuery.of(context).padding.top,
                  ),

                  SizedBox(height: 50),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.book,
                        size: 40,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Beadle\'s++',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineLarge?.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 80),

                  Text(
                    "Create your account",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 30),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "Please enter required details",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 15,
                      color: Color.fromARGB(255, 144, 140, 175),
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  SizedBox(height: 25),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        //controller: widget.lastNameController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          hintText: 'Enter your full name',
                          hintStyle: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(
                            color:
                                Theme.of(context).brightness == Brightness.light
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

                  SizedBox(height: 15),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        //controller: widget.lastNameController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          hintText: 'Email address',
                          hintStyle: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(
                            color:
                                Theme.of(context).brightness == Brightness.light
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

                  SizedBox(height: 15),

                  //PASSWORD TEXT FIELD ==============================================
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        obscureText: _obscureText,
                        onChanged: (enteredPassword) {
                          setState(() {
                            password = enteredPassword;
                          });
                        },
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                HapticFeedback.lightImpact();
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? const Color.fromARGB(195, 55, 42, 114)
                                      : const Color.fromARGB(
                                        118,
                                        157,
                                        146,
                                        212,
                                      ),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          hintText: 'Password',
                          hintStyle: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? const Color.fromARGB(195, 55, 42, 114)
                                    : const Color.fromARGB(118, 157, 146, 212),
                          ),
                          filled: true,
                          fillColor:
                              Theme.of(context).brightness == Brightness.light
                                  ? const Color.fromARGB(255, 239, 246, 250)
                                  : const Color.fromARGB(43, 63, 81, 181),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? const Color.fromARGB(195, 55, 42, 114)
                                      : const Color.fromARGB(
                                        118,
                                        157,
                                        146,
                                        212,
                                      ),
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

                  SizedBox(height: 15),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        textInputAction: TextInputAction.done,
                        obscureText: _obscureText2,
                        onChanged: (enteredPassword) {
                          setState(() {
                            confirmPassword = enteredPassword;
                          });
                        },
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                HapticFeedback.lightImpact();
                                _obscureText2 = !_obscureText2;
                              });
                            },
                            child: Icon(
                              _obscureText2
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? const Color.fromARGB(195, 55, 42, 114)
                                      : const Color.fromARGB(
                                        118,
                                        157,
                                        146,
                                        212,
                                      ),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          hintText: 'Confirm Password',
                          hintStyle: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? const Color.fromARGB(195, 55, 42, 114)
                                    : const Color.fromARGB(118, 157, 146, 212),
                          ),
                          filled: true,
                          fillColor:
                              Theme.of(context).brightness == Brightness.light
                                  ? const Color.fromARGB(255, 239, 246, 250)
                                  : const Color.fromARGB(43, 63, 81, 181),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? const Color.fromARGB(195, 55, 42, 114)
                                      : const Color.fromARGB(
                                        118,
                                        157,
                                        146,
                                        212,
                                      ),
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

                  SizedBox(height: 25), //fix the gaps pag kulang niggas
                  //LOG IN BUTTON
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SaveButton(
                      title: "Create Account",
                      onPressed: () {
                        HapticFeedback.mediumImpact();
                        Navigator.pushNamed(context, '/login-page');
                      },
                    ),
                  ),

                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "I already have an ",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 15,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Color.fromARGB(255, 50, 45, 83)
                                  : Color.fromARGB(255, 144, 140, 175),
                          fontWeight: FontWeight.w300,
                        ),
                      ),

                      TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () {
                          //go to login page
                          HapticFeedback.mediumImpact();
                          Navigator.pushNamed(context, '/login-page');
                        },
                        child: Text(
                          "account.",
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
