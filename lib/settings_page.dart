import 'dart:ui';
import 'package:beadles_app_prototype1/utils/background.dart';
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

              Expanded(
                child: Container(color: Colors.transparent),
              ), //REPLACE THIS WITH CONTENTS

              SizedBox(
                //PADDING BOTTOM NAVIGATION BAR
                height: MediaQuery.of(context).padding.bottom,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
