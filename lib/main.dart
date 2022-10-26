import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './utils/colors.dart';

import './pages/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.blueColor,
        backgroundColor: AppColors.blackColor,
        // textTheme: GoogleFonts.abel().copyWith(fontSize: 12),
      ),
      home: const HomePage(),
    );
  }
}
