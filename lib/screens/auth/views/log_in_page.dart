import 'package:beadles_app/screens/home/views/main_page.dart';
import 'package:beadles_app/core/widgets/background.dart';
import 'package:beadles_app/core/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _obscureText = true;
  String password = '';
  bool _checked = false;

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

                  //REPLACE THIS SHIT WITH CONTENTS
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
                    "Welcome Atenean!",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontSize: 30),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "Sign in to your account",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 15,
                      color: Color.fromARGB(255, 144, 140, 175),
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  SizedBox(height: 25),

                  //LENNARD FIX ============================================================================================================
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 60,
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        //controller: widget.lastNameController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            size: 23,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(195, 55, 42, 114)
                                    : Color.fromARGB(118, 157, 146, 212),
                          ),
                          hintText: 'username@gbox.adnu.edu.ph',
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

                  SizedBox(height: 7),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        obscureText: _obscureText,
                        onChanged: (enteredPassword) {
                          setState(() {
                            password = enteredPassword;
                          });
                        },
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            size: 23,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(195, 55, 42, 114)
                                    : Color.fromARGB(118, 157, 146, 212),
                          ),
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

                  //REMEMBER ME CHECKBOX AND FORGET PASSWORD
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Checkbox(
                            value: _checked,
                            onChanged: (bool? newValue) {
                              setState(() {
                                HapticFeedback.lightImpact();
                                _checked = newValue ?? false;
                              });
                            },
                          ),
                          Text(
                            "Remember me",
                            style: Theme.of(
                              context,
                            ).textTheme.titleSmall?.copyWith(
                              fontSize: 14,
                              color:
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Color.fromARGB(255, 50, 45, 83)
                                      : Color.fromARGB(255, 144, 140, 175),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: 75),

                      TextButton(
                        onPressed: () {
                          HapticFeedback.mediumImpact();
                          Navigator.pushNamed(context, '/forgot-password-page');
                        },
                        child: Text(
                          "Forgot password?",
                          style: Theme.of(
                            context,
                          ).textTheme.titleSmall?.copyWith(
                            fontSize: 14,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Color.fromARGB(255, 103, 89, 180)
                                    : Color.fromARGB(255, 103, 89, 180),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),

                      SizedBox(width: 15),
                    ],
                  ),

                  SizedBox(height: 10), //fix the gaps pag kulang
                  //LOG IN BUTTON
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SaveButton(
                      title: "Sign in",
                      onPressed: () {
                        //navigate to home page,
                        HapticFeedback.lightImpact();
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                          (route) => false,
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                          indent: 35,
                          endIndent: 10,
                        ),
                      ),
                      Text(
                        "or",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 15,
                          color: Color.fromARGB(255, 144, 140, 175),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                          indent: 10,
                          endIndent: 35,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10), //fix the gaps pag kulan
                  //LOG IN BUTTON WITH GBOX
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 70,
                      child: SaveButton(
                        title: "Sign in with GBOX Account",
                        onPressed: () {
                          //navigate to home page,
                          HapticFeedback.lightImpact();
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                            (route) => false,
                          );
                        },
                        icon: 'assets/images/Ateneo_logo.png',
                        textAlignLeft: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 14,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Color.fromARGB(255, 50, 45, 83)
                                  : Color.fromARGB(255, 144, 140, 175),
                          fontWeight: FontWeight.w300,
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          //Navigate to Sign up page
                          HapticFeedback.mediumImpact();
                          Navigator.pushNamed(context, '/signup-page');
                        },
                        child: Text(
                          "Sign up",
                          style: Theme.of(
                            context,
                          ).textTheme.titleSmall?.copyWith(
                            fontSize: 14,
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
                    //PADDING BOTTOM NAVIGATION BAR DONUT MOVE
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
