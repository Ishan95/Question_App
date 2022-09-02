import 'package:flutter/material.dart';
import './quetions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]["Question"] as String),
        ...(questions[questionIndex]["Answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              () => answerQuestions(answer["score"]), answer["text"] as String);
        }).toList()
      ],
    );
  }
}
