import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:music_app/Screens/home.dart';
import 'package:music_app/Screens/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleSignIn googleSignIn = GoogleSignIn();
    googleSignIn.isSignedIn().then((value) {
      if (value) {
        Future.delayed(const Duration(seconds: 3), () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ));
        });
      } else {
        Future.delayed(const Duration(seconds: 3), () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignInScreen(),
              ));
        });
      }
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
