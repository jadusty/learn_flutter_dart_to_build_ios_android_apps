import 'package:flutter/material.dart';

class TextElement extends StatelessWidget {
  final String text;

  TextElement(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Center(
        child: Text(text,
            style: TextStyle(color: Colors.blueAccent, fontSize: 20)),
      ),
    );
  }
}
