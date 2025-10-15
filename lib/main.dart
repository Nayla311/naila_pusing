// lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider
import 'package:naila_pusing/screens/splash_screen.dart';
import 'package:naila_pusing/service/order_service.dart'; // Import OrderService

void main() {
  runApp(const BeautyPalaceApp());
}

class BeautyPalaceApp extends StatelessWidget {
  const BeautyPalaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Wrap the app with ChangeNotifierProvider for OrderService
    return ChangeNotifierProvider(
      create: (context) => OrderService(),
      child: MaterialApp(
        title: 'Beauty Palace',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          fontFamily: 'Roboto',
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
