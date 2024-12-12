import 'package:flutter/material.dart';
import 'views/home_page.dart';

void main() {
  runApp(const BloodBankApp());
}

class BloodBankApp extends StatelessWidget {
  const BloodBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Blood Bank',
      theme: ThemeData(
        primaryColor: const Color(0xFFE32D2D),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}


