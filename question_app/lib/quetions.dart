import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String quetionText;

  Questions(this.quetionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      quetionText,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}
