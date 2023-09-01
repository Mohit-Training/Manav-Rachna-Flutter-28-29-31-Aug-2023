//shortcut - stl

import 'package:flutter/material.dart';

class StateLess extends StatelessWidget {
  StateLess({super.key});
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Container(
                    child: Text(
          "counter : $count",
          style: TextStyle(fontSize: 20),
        )))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
            print(count);
            // setState((){});
          },
          child: Icon(Icons.add),
        ));
  }
}
