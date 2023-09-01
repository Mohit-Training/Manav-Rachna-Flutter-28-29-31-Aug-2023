//Expanded, Spacer
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize:MainAxisSize.max,
          children: [
            Container(height: 60,width: 250,color: Colors.red,),
            Container(height: 100,width: 350,color: Colors.blue,),
            Container(height: 80,width: 450,color: Colors.green,),
          ],
        ),
      )),
    );
  }
}