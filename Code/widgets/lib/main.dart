import 'package:flutter/material.dart';
import 'package:widgets/widgets/BottomSheetWidget.dart';
import 'package:widgets/widgets/FittedBoxWidget.dart';
import 'package:widgets/widgets/FlexibleWidget.dart';
import 'package:widgets/widgets/ButtonWidget.dart';
import 'package:widgets/widgets/FormWidget.dart';
import 'package:widgets/widgets/FutureBuilderWidget.dart';
import 'package:widgets/widgets/IntroScreen.dart';
import 'package:widgets/widgets/ListViewBuilder.dart';
import 'package:widgets/widgets/StackWidget.dart';
import 'package:widgets/widgets/ColumnWidget.dart';
import 'package:widgets/widgets/ContainerWidget.dart';
import 'package:widgets/widgets/ImageWidget.dart';
import 'package:widgets/widgets/ScaffoldWidget.dart';
import 'package:widgets/widgets/TextFieldWidget.dart';
import 'package:widgets/widgets/TextWidget.dart';
import 'widgets/RowWidget.dart';
import 'widgets/StateFull.dart';
import 'widgets/Stateless.dart';
//project needs to be restart if anything changes in main file and we want to see changes
// main() {  //entry point of project
//   runApp(MaterialApp(
//     home:Container(
//       child: Text("Hello World"),
//     )  //First screen of project
//   ));
// }

main() {
  runApp(MaterialApp(
    // home: Home(),
    // home:ScaffoldWidget()
    // home: TextWidget(),
    // home: StateLess(),
    // home: StateFull(),
    // home: ContainerWidget(),
    // home: RowWidget(),
    // home: RowWidget(),
    // home: ImageWidget(),
    // home: StackWidget(),
    // home: ButtonWidget(),
    // home: TextFieldWidget(),
    // home: FormWidget(),
    // home: ListViewWidget(),
    // home: FutureBuilderWidget(),
    // home: FlexibleWidet(),
    // home:   FittedBoxWidget(),
    // home: BottomSheetWidget(),
    home: IntroScreen(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hello World"),
    );
  }
}
