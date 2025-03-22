import 'package:flutter/material.dart';
import 'package:carkey_app/screens/splash_screen.dart';
import 'package:carkey_app/screens/onboarding_screen.dart';
import 'package:carkey_app/screens/dashboard_screen.dart';
import 'package:carkey_app/screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CarKey App',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/profile_settings': (context) => const ProfileSettingsScreen(),
      },
    );
  }
}
