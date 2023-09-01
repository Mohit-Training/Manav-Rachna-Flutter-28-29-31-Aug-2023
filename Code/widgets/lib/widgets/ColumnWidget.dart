// ... spread operator, Expanded, Spacer, SingleChildScrolllView
import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize:MainAxisSize.max,
          children: [
            Container(height: 560,width: 50,color: Colors.red,),
            Container(height: 400,width: 350,color: Colors.blue,),
            // Spacer(),
            Container(height: 280,width: 50,color: Colors.green,),
          ],
        ),
      )),
    );
  }
}