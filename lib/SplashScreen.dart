import 'package:bcnbaila_pwa/main.dart';
import 'package:flutter/material.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color of the splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/BCNBaila.png', // Apni image ka path yahan den
              width: 300, // Image ki width set karein
              height: 300, // Image ki height set karein
            ),
            const SizedBox(height: 20), // Thoda sa space den image ke neeche
            const CircularProgressIndicator(), // Loader (CircularProgressIndicator)
          ],
        ),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Simulate some loading time with Future.delayed
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the main screen after the delay
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainApp()),
      );
    });

    return const CustomSplashScreen(); // Display your custom splash screen
  }
}
