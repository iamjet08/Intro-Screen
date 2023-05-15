import 'package:flutter/material.dart';
import 'package:onboarding_screen/HomeScreen.dart';
import 'IntroScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => IntroScreen(),
        "home": (context) => HomeScreen(),
      },
    );
  }
}
