import 'package:flutter/material.dart';
import 'package:naila_pusing/screens/splash_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const BeautyPalaceApp());
}

class BeautyPalaceApp extends StatelessWidget {
  const BeautyPalaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beauty Palace',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Roboto',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
    );
  }
}
