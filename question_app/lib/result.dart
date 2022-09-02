import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int sumScore;
  final Function() resetQuiz;

  Result(this.sumScore, this.resetQuiz);

  String get resultPhase {
    String resultText;

    if (sumScore >= 80) {
      resultText = "V.Good";
    } else if (sumScore >= 60) {
      resultText = "Good";
    } else if (sumScore >= 40) {
      resultText = "fair";
    } else {
      resultText = "Bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 100),
          Text(
            resultPhase,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          FlatButton(
              onPressed: resetQuiz,
              child: Text(
                "Try Again!!!",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
