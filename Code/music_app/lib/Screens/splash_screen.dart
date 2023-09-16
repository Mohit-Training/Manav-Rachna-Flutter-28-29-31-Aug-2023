import 'package:flutter/material.dart';
import 'package:music_app/Screens/login.dart';
import 'home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignInScreen(),
          ));
    });
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Let the Music Speak!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Image.asset('assets/music.gif')
            ]));
  }
}
