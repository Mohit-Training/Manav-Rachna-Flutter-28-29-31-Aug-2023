//ElevatedButton, TextButton, OutlinedButton, IconButton, GestureDetector
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(50, 30)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ))),
                onPressed: () {
                  print("Elevated Button Pressed");
                },
                child: Text("ElevatedButton")),
            TextButton(
                onPressed: () {
                  print("Text Button pressed");
                },
                child: Text("Text Button")),
            OutlinedButton(
                onPressed: () {
                  print("outlined button pressed");
                },
                child: Text("Outlined Button")),
            IconButton(
                onPressed: () {
                  print("Icon Button pressed");
                },
                icon: Icon(Icons.abc))
          ],
        ),
      )),
    );
  }
}
