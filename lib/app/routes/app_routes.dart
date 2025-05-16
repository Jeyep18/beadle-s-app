import 'package:flutter/material.dart';
import 'package:beadles_app/screens/classes/views/class_dashboard.dart';
import 'package:beadles_app/screens/classes/views/class_main_nav_page.dart';
import 'package:beadles_app/screens/auth/views/forgot_password_page.dart';
import 'package:beadles_app/screens/auth/views/email_sent_page.dart';
import 'package:beadles_app/screens/auth/views/log_in_page.dart';
import 'package:beadles_app/screens/auth/views/sign_up.dart';
import 'package:beadles_app/screens/home/views/main_page.dart';
import 'package:beadles_app/screens/profile/views/profile_page.dart';
import 'package:beadles_app/screens/profile/views/settings_page.dart';
import 'package:beadles_app/screens/profile/views/beadles_guide.dart';

class AppRoutes {
  static const String classDashboard = '/class-dashboard';
  static const String classMainNav = '/class-main-nav-page';
  static const String forgotPassword = '/forgot-password-page';
  static const String emailSent = '/email-sent-page';
  static const String login = '/login-page';
  static const String signup = '/signup-page';
  static const String mainPage = '/main-page';
  static const String settings = '/settings-page';
  static const String profile = '/profile-page';
  static const String beadlesGuide = '/beadle-guide-page';

  static Map<String, WidgetBuilder> routes = {
    classDashboard: (context) => ClassPage(studentList: []),
    classMainNav: (context) => ClassMainNavPage(),
    forgotPassword: (context) => ForgotPasswordPage(),
    emailSent: (context) => EmailSentPage(),
    login: (context) => LogInPage(),
    signup: (context) => SignUpPage(),
    mainPage: (context) => MainPage(),
    settings: (context) => SettingsPage(),
    profile: (context) => ProfilePage(),
    beadlesGuide: (context) => BeadlesGuide(),
  };
}
