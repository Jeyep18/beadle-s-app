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
          top: MediaQuery.of(context).size.height * -0.22,
          left: MediaQuery.of(context).size.width * 0.6,
          child: Container(
            height: screenHeight * 0.9, // Adjust size
            width: screenWidth * 0.8, // Adjust size
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
              -0.3, //LOWER MEANS IT GOES TO RIGHT, HIGHER MEANS IT GOES TO LEFT
          child: Container(
            height: screenHeight * 0.9, // Adjust size
            width: screenWidth * 0.6, // Adjust size
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        Positioned(
          top: MediaQuery.of(context).size.height * 0.55,
          left: MediaQuery.of(context).size.width * 0.75,
          child: Container(
            height: screenHeight * 0.4, // Adjust size
            width: screenWidth * 0.4, // Adjust size
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 80.0, sigmaY: 125.0),
          child: Container(color: Colors.transparent),
        ),
      ],
    );
  }
}
