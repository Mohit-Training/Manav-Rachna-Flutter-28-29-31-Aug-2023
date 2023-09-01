//Flex
import 'package:flutter/material.dart';

class FlexibleWidet extends StatelessWidget {
  const FlexibleWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  width: 100,
                  color: Colors.red,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  width: 100,
                  color: Colors.black,
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  width: 100,
                  color: Colors.blue,
                ),
              ),
              Flexible(
                flex: 4,
                child: Container(
                  width: 100,
                  color: Colors.yellow,
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  width: 100,
                  color: Colors.green,
                ),
              ),
              Flexible(
                flex: 6,
                child: Container(
                  width: 100,
                  color: Colors.amber,
                ),
              ),
              Flexible(
                flex: 7,
                child: Container(
                  width: 100,
                  color: Colors.grey,
                ),
              ),
              Flexible(
                flex: 8,
                child: Container(
                  width: 100,
                  color: Colors.pink,
                ),
              ),
            ],
          )),
    );
  }
}
