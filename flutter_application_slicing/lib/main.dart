import 'package:flutter/material.dart';
import 'package:flutter_application_slicing/komponen/splashscreen.dart';
import 'package:flutter_application_slicing/halaman/page_01.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_application_slicing/komponen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: lottie.asset('assets/loader.json'),
            ),
            const SizedBox(height: 20),
            const Text(
              "MySlicingKu",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        nextScreen: const Page01(), // arahkan ke halaman utama kamu
        splashIconSize: 250,
        backgroundColor: Colors.white,
        duration: 3000, // durasi 3 detik
        splashTransition: splashTransition.fadeTransition, // ✅ bukan SplashScreen()
      ),
    );
  }
}
