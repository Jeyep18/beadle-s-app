import 'dart:ui';
import 'package:flutter/material.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * -0.06,
          left: MediaQuery.of(context).size.width * 0.78,
          child: Container(
            height: screenHeight * 1, // Adjust size
            width: screenWidth * 1, // Adjust size
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        Positioned(
          top:
              MediaQuery.of(context).size.height *
              0.25, // LOWER MEANS IT GOES UP, HIGHER MEANS IT GOES DOWN
          left:
              MediaQuery.of(context).size.width *
              -0.89, //LOWER MEANS IT GOES TO RIGHT, HIGHER MEANS IT GOES TO LEFT
          child: Container(
            height: screenHeight * 0.9, // Adjust size
            width: screenWidth * 1, // Adjust size
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        // Positioned(
        //   top: MediaQuery.of(context).size.height * 0.63,
        //   left: MediaQuery.of(context).size.width * -0.01,

        //   child: Container(
        //     height: screenHeight * 1, // Adjust size
        //     width: screenWidth * 1, // Adjust size
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: Theme.of(context).colorScheme.primary,
        //     ),
        //   ),
        // ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 200.0, sigmaY: 200.0),
          child: Container(color: Colors.transparent),
        ),
      ],
    );
  }
}
