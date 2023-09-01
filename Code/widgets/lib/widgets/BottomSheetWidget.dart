import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late BuildContext drawerContext;

  BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Bottom Sheet Widget'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(drawerContext);
              },
              icon: Icon(Icons.close)),
          IconButton(
              onPressed: () {
                scaffoldKey.currentState?.showBottomSheet((context) {
                  drawerContext = context;
                  return Container(
                    height: 400,
                    color: Colors.amber,
                  );
                });
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Container(),
    );
  }
}
