//responsiveness of fittedbox
import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FittedBox(
          child: Row(
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
            ],
          ),
        ),
      ),
    );
  }
}
