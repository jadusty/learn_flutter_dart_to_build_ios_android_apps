// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './app.dart';
import './text.dart';
import './textcontrol.dart';

void main() => runApp(TextApp());

class TextApp extends StatefulWidget {
  @override
  _TextAppState createState() => _TextAppState();
}

class _TextAppState extends State<TextApp> {
  final _displayTexts = [
    'This is my first text string',
    'This is my second text string'
  ];
  int displayIdx = 0;
  String displayText;

  void changeText() {
    print('made it to _changeText');
    setState(() {
      displayText = _displayTexts[displayIdx];
      displayIdx = displayIdx == 0 ? 1 : 0;
    });
  }

  _TextAppState()
  {
    displayText = _displayTexts[displayIdx];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: MyAppBar(new AppBar(), "My Text Changer App"),
            body: Column(
              children: [TextElement(displayText), TextControl(changeText)],
            )));
  }
}
