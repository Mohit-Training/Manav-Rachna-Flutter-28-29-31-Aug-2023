//Container, Circular Avatar, LinearGradient, RadialGradient, SweepGradient, trasform
import 'dart:math';

import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  container1() {
    return Container(height: 100, width: 100, color: Colors.red);
  }

  container2() {
    return Container(
      height: 100,
      width: 100,
      // color: Colors.green,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(top: 5, right: 10, bottom: 15, left: 20),
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5)),
      child: Container(
        color: Colors.amber,
      ),
    );
  }

  container3() {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(color: Colors.blue, boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 0, 0, 0),
              blurRadius: 2,
              offset: Offset(0, 2)),
        ]),
      ),
    );
  }

  container4() {
    return Center(
      child: Container(
        height: 500,
        width: 250,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: [0.4, 0.7],
                colors: [Colors.purple, Colors.blueAccent])),
      ),
    );
  }

  container5() {
    return Center(
      child: Container(
        height: 500,
        width: 250,
        decoration: BoxDecoration(
            gradient: RadialGradient(
                center: Alignment.bottomRight,
                radius: 0.75,
                colors: [Colors.purple, Colors.blueAccent])),
      ),
    );
  }

  container6() {
    return Center(
      child: Container(
        height: 500,
        width: 250,
        decoration: BoxDecoration(
            gradient: SweepGradient(
                center: Alignment.center,
                startAngle: 0,
                endAngle: 5,
                colors: [Colors.purple, Colors.blueAccent])),
      ),
    );
  }

  container7(){
    return Container(
      height: 100,
      width: 100,
      color: Colors.red,
      transform: Matrix4.rotationZ(pi/3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: container7()),
    );
  }
}
