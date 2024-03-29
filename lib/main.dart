import 'package:drips_water/core/app_color.dart';
import 'package:drips_water/screens/splash/screen_splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drips Water',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.colorPrimary),
        useMaterial3: true,
      ),
      home: const ScreenSplash(),
    );
  }
}
