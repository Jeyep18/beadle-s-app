import 'package:beadles_app_prototype1/main_page.dart';
import 'package:beadles_app_prototype1/utils/background.dart';
import 'package:beadles_app_prototype1/utils/save_button.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

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
            Column(
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
                  "Welcome back!",
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

                //LENNARD FIX TSHIT ============================================================================================================
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    height: 60,
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      //controller: widget.lastNameController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        prefixIcon: Icon(Icons.email, size: 25),
                        hintText: 'username@gbox.adnu.edu.ph',
                        hintStyle: Theme.of(context).textTheme.labelSmall,
                        filled: true,
                        fillColor:
                            Theme.of(context).brightness == Brightness.light
                                ? Color.fromARGB(255, 239, 246, 250)
                                : Color.fromARGB(255, 18, 22, 32),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 117, 117, 117),
                            width: 1,
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
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      //controller: widget.lastNameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, size: 25),
                        hintText: 'Password',
                        hintStyle: Theme.of(context).textTheme.labelSmall,
                        filled: true,
                        fillColor:
                            Theme.of(context).brightness == Brightness.light
                                ? Color.fromARGB(255, 239, 246, 250)
                                : Color.fromARGB(255, 18, 22, 32),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 117, 117, 117),
                            width: 1,
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
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? newValue) {
                        // Handle checkbox state change here
                      },
                    ),

                    Expanded(
                      child: Text(
                        "Remember me",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 15,
                          color: Color.fromARGB(255, 144, 140, 175),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        //Navigate to forget pass page
                        Navigator.pushNamed(context, '/forgot-password-page');
                      },
                      child: Text(
                        "Forgot password?",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 15,
                          color: Color.fromARGB(
                            255,
                            98,
                            87,
                            180,
                          ), //change this color it pmo // What you mean ipyo ToT
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10), //fix the gaps pag kulang niggas
                //LOG IN BUTTON
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SaveButton(
                    title: "Sign in",
                    onPressed: () {
                      //navigate to home page,
                      //Navigator.pushNamed(context, '/main-page');
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
                        indent: 10,
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
                        endIndent: 10,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10), //fix the gaps pag kulang niggas
                //LOG IN BUTTON WITH GBOX
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SaveButton(
                    title: "Sign in with GBOX Account",
                    onPressed: () {
                      //navigate to home page,
                      Navigator.pushNamed(context, '/main-page');
                    },
                    hasLogo: true,
                  ),
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 15,
                        color: Color.fromARGB(255, 144, 140, 175),
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        //Navigate to forget pass page
                      },
                      child: Text(
                        "Sign up",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 15,
                          color: Color.fromARGB(
                            255,
                            98,
                            87,
                            180,
                          ), //change this color it pmo
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
          ],
        ),
      ),
    );
  }
}
