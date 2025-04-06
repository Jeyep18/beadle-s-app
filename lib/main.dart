import 'package:beadles_app_prototype1/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:beadles_app_prototype1/class_dashboard.dart';
import 'package:beadles_app_prototype1/home.dart';

void main() {
  runApp(const MainApp());
}

//NIGGAS WOHOOO!
//PUTANGINA MO NIGGERS
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {'/class-dashboard': (context) => ClassPage()},
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
