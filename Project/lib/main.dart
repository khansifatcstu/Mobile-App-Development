import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const ThanatosApp());
}

class ThanatosApp extends StatelessWidget {
  const ThanatosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThanatoX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // অ্যাপের প্রাইমারি কালার থিম (হালকা সবুজ)
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2E7D6A)),
        scaffoldBackgroundColor: const Color(0xFFC3D8C3), // ওয়েলকাম স্ক্রিনের ব্যাকগ্রাউন্ড
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}