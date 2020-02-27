import 'package:flutter/material.dart';
import 'package:assignment_1/agents/androidphone.dart';

void main() => runApp(App());

class App extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: AndroidPhoneWidget(),
    );
  }
}
