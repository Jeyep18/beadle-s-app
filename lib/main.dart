import 'package:beadles_app/app/routes/app_routes.dart';
import 'package:beadles_app/core/widgets/pseudo_loading.dart';
import 'package:beadles_app/app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//THIS IS THE MAIN.DART FILE OF THE BEADLES APP WOHOO

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).scaffoldBackgroundColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        locale: Locale('en', 'US'),
        routes: AppRoutes.routes,
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
      ),
    );
  }
}
