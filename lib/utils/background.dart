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
          top: MediaQuery.of(context).size.height * -0.20,
          left: MediaQuery.of(context).size.width * 0.68,
          child: Container(
            height: screenHeight * 0.9, // Adjust size
            width: screenWidth * 1, // Adjust size
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),

        Positioned(
          top:
              MediaQuery.of(context).size.height *
              0.1, // LOWER MEANS IT GOES UP, HIGHER MEANS IT GOES DOWN
          left:
              MediaQuery.of(context).size.width *
              -0.65, //LOWER MEANS IT GOES TO RIGHT, HIGHER MEANS IT GOES TO LEFT
          child: Container(
            height: screenHeight * 0.9, // Adjust size
            width: screenWidth * 1, // Adjust size
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 94, 201, 176),
            ),
          ),
        ),

        Positioned(
          top: MediaQuery.of(context).size.height * 0.60,
          left: MediaQuery.of(context).size.width * 0.70,
          child: Container(
            height: screenHeight * 0.4, // Adjust size
            width: screenWidth * 0.8, // Adjust size
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 125.0),
          child: Container(color: Colors.transparent),
        ),
      ],
    );
  }
}
