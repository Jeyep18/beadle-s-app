import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            Theme.of(context).brightness == Brightness.dark
                ? SystemUiOverlayStyle
                    .light // white icons for dark mode
                : SystemUiOverlayStyle.dark, // black icons for light mode
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.tertiary),
        centerTitle: true,
        titleSpacing: 0,
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: Colors.transparent,
      ),

      body: Stack(
        children: [
          Align(
            alignment: Alignment(85, -0.9),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),

          Align(
            alignment: Alignment(-95, -0.2),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),

          Align(
            alignment: Alignment(110, 1),
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),

          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 200.0, sigmaY: 200.0),
            child: Container(),
          ),

          //==================================MAIN CONTENT==================================
        ],
      ),
    );
  }
}
