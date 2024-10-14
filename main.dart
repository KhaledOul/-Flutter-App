import 'package:e_book/Config/themes.dart';
import 'package:e_book/Pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DigitBook',
      theme: lightTheme,
    
      home: const WelcomePage(),
    );
  }
}

