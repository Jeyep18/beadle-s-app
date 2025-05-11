import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * -0.2,
          left: MediaQuery.of(context).size.width * 0.88,
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
              -0.89, //LOWER MEANS IT GOES TO RIGHT, HIGHER MEANS IT GOES TO LEFT DUMB AH
          child: Container(
            height: screenHeight * 0.9, // Adjust size
            width: screenWidth * 1, // Adjust size
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 200.0, sigmaY: 200.0),
          child: Container(color: Colors.transparent),
        ),

        Positioned(
          top: MediaQuery.of(context).size.height * 0.18,
          left: MediaQuery.of(context).size.width * 0.80,
          child: CircularMotionWidget(
            direction: MotionDirection.counterClockwise,
            duration: Duration(seconds: 60),
            radius: 20,
            child: Container(
              height: screenHeight * 0.25, // Adjust size
              width: screenWidth * 0.25, // Adjust size
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors:
                      Theme.of(context).brightness == Brightness.light
                          ? [
                            Color.fromARGB(255, 72, 72, 177),
                            Color.fromARGB(255, 68, 81, 155),
                            Color.fromARGB(255, 114, 130, 224),
                            Color.fromARGB(255, 224, 225, 255),
                            Color.fromARGB(255, 92, 92, 184),
                          ]
                          : [
                            Color.fromARGB(255, 251, 251, 255),
                            Color.fromARGB(255, 225, 225, 253),
                            Color.fromARGB(255, 157, 158, 214),
                            Color(0xFF3f51b5),
                            Color.fromARGB(255, 35, 46, 109),
                          ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                color: Color(0xFFc7c8ff),
                // color: const Color.fromARGB(199, 34, 53, 161),
              ),
            ),
          ),
        ),

        Positioned(
          top: MediaQuery.of(context).size.height * 0.68,
          left: MediaQuery.of(context).size.width * 0.05,
          child: CircularMotionWidget(
            direction: MotionDirection.clockwise,
            duration: Duration(seconds: 45),
            radius: 40,
            child: Container(
              height: screenHeight * 0.1, // Adjust size
              width: screenWidth * 0.1, // Adjust size
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors:
                      Theme.of(context).brightness == Brightness.light
                          ? [
                            Color.fromARGB(255, 72, 72, 177),
                            Color.fromARGB(255, 68, 81, 155),
                            Color.fromARGB(255, 114, 130, 224),
                            Color.fromARGB(255, 224, 225, 255),
                            Color.fromARGB(255, 92, 92, 184),
                          ]
                          : [
                            Color.fromARGB(255, 251, 251, 255),
                            Color.fromARGB(255, 225, 225, 253),
                            Color.fromARGB(255, 157, 158, 214),
                            Color(0xFF3f51b5),
                            Color.fromARGB(255, 35, 46, 109),
                          ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                color: Color(0xFFc7c8ff),
                // color: const Color.fromARGB(199, 34, 53, 161),
              ),
            ),
          ),
        ),

        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(color: Colors.transparent),
        ),

        Positioned(
          top: MediaQuery.of(context).size.height * 0.18,
          left: MediaQuery.of(context).size.width * 0.80,
          child: CircularMotionWidget(
            direction: MotionDirection.counterClockwise,
            duration: Duration(seconds: 60),
            radius: 20,
            child: Container(
              height: screenHeight * 0.25, // Adjust size
              width: screenWidth * 0.25, // Adjust size
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors:
                      Theme.of(context).brightness == Brightness.light
                          ? [
                            Color.fromARGB(255, 72, 72, 177),
                            Color.fromARGB(255, 68, 81, 155),
                            Color.fromARGB(255, 114, 130, 224),
                            Color.fromARGB(255, 224, 225, 255),
                            Color.fromARGB(255, 92, 92, 184),
                          ]
                          : [
                            Color.fromARGB(255, 251, 251, 255),
                            Color.fromARGB(255, 225, 225, 253),
                            Color.fromARGB(255, 157, 158, 214),
                            Color(0xFF3f51b5),
                            Color.fromARGB(255, 35, 46, 109),
                          ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                color: Color(0xFFc7c8ff),
                // color: const Color.fromARGB(199, 34, 53, 161),
              ),
            ),
          ),
        ),

        Positioned(
          top: MediaQuery.of(context).size.height * 0.68,
          left: MediaQuery.of(context).size.width * 0.05,
          child: CircularMotionWidget(
            direction: MotionDirection.clockwise,
            duration: Duration(seconds: 45),
            radius: 40,
            child: Container(
              height: screenHeight * 0.1, // Adjust size
              width: screenWidth * 0.1, // Adjust size
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors:
                      Theme.of(context).brightness == Brightness.light
                          ? [
                            Color.fromARGB(255, 72, 72, 177),
                            Color.fromARGB(255, 68, 81, 155),
                            Color.fromARGB(255, 114, 130, 224),
                            Color.fromARGB(255, 224, 225, 255),
                            Color.fromARGB(255, 92, 92, 184),
                          ]
                          : [
                            Color.fromARGB(255, 251, 251, 255),
                            Color.fromARGB(255, 225, 225, 253),
                            Color.fromARGB(255, 157, 158, 214),
                            Color(0xFF3f51b5),
                            Color.fromARGB(255, 35, 46, 109),
                          ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                color: Color(0xFFc7c8ff),
                // color: const Color.fromARGB(199, 34, 53, 161),
              ),
            ),
          ),
        ),

        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(color: Colors.transparent),
        ),
      ],
    );
  }
}

enum MotionDirection { clockwise, counterClockwise }

class CircularMotionWidget extends StatefulWidget {
  const CircularMotionWidget({
    super.key,
    this.duration = const Duration(seconds: 20),
    this.radius = 20,
    this.direction = MotionDirection.clockwise,
    required this.child,
  });

  final Duration duration;
  final double radius;
  final MotionDirection direction;
  final Widget child;

  @override
  State<CircularMotionWidget> createState() => _CircularMotionWidgetState();
}

class _CircularMotionWidgetState extends State<CircularMotionWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: widget.duration, vsync: this)
      ..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final directionMultiplier =
            widget.direction == MotionDirection.clockwise ? 1 : -1;
        final angle = directionMultiplier * 2 * pi * controller.value;
        final dx = widget.radius * cos(angle);
        final dy = widget.radius * sin(angle);
        return Transform.translate(offset: Offset(dx, dy), child: child);
      },
      child: widget.child,
    );
  }
}
