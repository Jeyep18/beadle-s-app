//import 'package:beadles_app_prototype1/main_page.dart';
import 'package:beadles_app_prototype1/utils/pseudo_loading.dart';
import 'package:beadles_app_prototype1/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:beadles_app_prototype1/class_dashboard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {'/class-dashboard': (context) => ClassPage()},
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
