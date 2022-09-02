import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback answerHandler;
  final String answerText;

  Answers(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: answerHandler,
      ),
    );
  }
}
