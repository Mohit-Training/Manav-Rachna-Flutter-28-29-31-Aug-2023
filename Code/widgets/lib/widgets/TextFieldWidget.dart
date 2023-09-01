// onChange, Controller, FocusNode, InputDecoration, TextInputType, TextStyle, TextAlign
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  String value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                onSubmitted: (value) {
                  focusNode.requestFocus();
                },
                onChanged: (value) {
                  this.value = value;
                  print("the new value is $value");
                },
              ),
              TextField(
                obscuringCharacter: '#',
                obscureText: true,
                // readOnly: true,
                focusNode: focusNode,
                controller: textEditingController,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("Print"),
              ),
              Text(
                  "Text from first text field is $value, Text from second text field is ${textEditingController.text}"),
              TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
              TextField(
                
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.amber,
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(10))),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'hint',
                    labelText: 'label',
                    prefixIcon: Icon(Icons.attach_money)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
