//Scaffold, Constraints, SafeArea, Center, AppBar, BottomNavigationBar, FloatingActionButton, Device Height, Device Width
//shortcuts - ctrl + .

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScaffoldWidget extends StatefulWidget {
  ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  int curretIndex = 0;

  List<Widget> widgets = [
    SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Container(
            child: Text("It's first widget"),
          ),
        ),
      ),
    ),
    SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Container(
            child: Text("It's second widget"),
          ),
        ),
      ),
    ),
    SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Container(
            child: Text("It's third widget"),
          ),
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    // Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        shadowColor: Colors.transparent,
        scrolledUnderElevation: 5,
        leadingWidth: 100,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        centerTitle: true,
        bottomOpacity: 0,
        backgroundColor: Colors.transparent,
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
        title: Text(
          "Scaffold Widget",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: widgets[curretIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: curretIndex,
          onTap: (value) {
            curretIndex = value;
            setState(() {
              
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
