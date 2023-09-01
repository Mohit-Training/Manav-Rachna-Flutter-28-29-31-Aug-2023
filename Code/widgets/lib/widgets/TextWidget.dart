//Text, RichText, TextSpan

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(text: const TextSpan(
          children: [
            TextSpan(text: "I ",style: TextStyle(fontSize: 14,color: Colors.blueGrey)),
            TextSpan(text: "am ",style: TextStyle(fontSize: 16,color: Colors.black)),
            TextSpan(text: "a ",style: TextStyle(fontSize: 18,color: Colors.black)),
            TextSpan(text: "Flutter ",style: TextStyle(fontSize: 20,color: Colors.blue)),
            TextSpan(text: "Developer ",style: TextStyle(fontSize: 22,color: Colors.lightBlue)),
          ]
        )),
      ),
    );
  }
}