import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:music_app/Screens/splash_screen.dart';

main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen()
  ));
}