//import 'package:beadles_app_prototype1/main_page.dart';
import 'package:beadles_app/class_main_nav_page.dart';
import 'package:beadles_app/email_sent_page.dart';
import 'package:beadles_app/forgot_password_page.dart';
import 'package:beadles_app/log_in_page.dart';
import 'package:beadles_app/main_page.dart';
import 'package:beadles_app/profile_page.dart';
import 'package:beadles_app/settings_page.dart';
import 'package:beadles_app/sign_up.dart';
import 'package:beadles_app/utils/pseudo_loading.dart';
import 'package:beadles_app/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:beadles_app/class_dashboard.dart';
import 'package:flutter/services.dart';

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
        routes: {
          '/class-dashboard': (context) => ClassPage(studentList: []),
          '/forgot-password-page': (context) => ForgotPasswordPage(),
          '/email-sent-page': (context) => EmailSentPage(),
          '/main-page': (context) => MainPage(),
          '/class-main-nav-page': (context) => ClassMainNavPage(),
          '/settings-page': (context) => SettingsPage(),
          '/profile-page': (context) => ProfilePage(),
          '/login-page': (context) => LogInPage(),
          '/signup-page': (context) => SignUpPage(),
        },
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
      ),
    );
  }
}
