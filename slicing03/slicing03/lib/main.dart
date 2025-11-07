import 'package:flutter/material.dart';
import 'package:flutter_application_3/halaman/homepage.dart';
// Pastikan path impor ini sesuai dengan nama file Anda di folder lib


void main() {
  // Menjalankan aplikasi Flutter
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Judul aplikasi yang muncul di task manager/overview
      title: 'KAI Access Clone',
      
      // Menonaktifkan banner "Debug" di pojok kanan atas
      debugShowCheckedModeBanner: false,
      
      // Mendefinisikan tema utama aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Mendefinisikan warna utama ungu yang digunakan di KAI/KAIPay
        primaryColor: const Color(0xFF5A4BC0), 
        scaffoldBackgroundColor: Colors.grey.shade50,
        fontFamily: 'Roboto', // Ganti dengan font yang Anda inginkan
      ),
      
      // Menetapkan HomePage sebagai halaman awal (home)
      home: const HomePage(),
    );
  }
}