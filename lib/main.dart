import 'package:flutter/material.dart';
import 'package:mlsc_uninstagram_project/screen/signup.dart';

import 'screen/MyLoginPage.dart';

void main() {
  runApp(const MyApp());
}

//
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Replace with your login page widget
      initialRoute: '/login', // Optional: start at the login screen
      routes: {
        '/login': (context) => const MyLoginPage(), // Define login route
        '/signup': (context) => const SignupPage(), // Define signup route
      },
    );
  }
}
