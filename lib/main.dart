import 'package:carkey_app/screens/dashboard_screen.dart';
import 'package:carkey_app/screens/settings_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        colorScheme: ColorScheme.light(
          primary: Colors.deepPurpleAccent,
          secondary: Colors.green,
          background: Colors.white,
        ),
      ),
      home: const ProfileSettingsScreen(),
    );
  }
}
