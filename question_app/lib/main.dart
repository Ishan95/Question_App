import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "Question": "Which Continent has the Highest Number of Countries? ",
      "Answers": [
        {"text": "Asia", "score": 0},
        {"text": "Europe", "score": 0},
        {"text": "North America", "score": 0},
        {"text": "Africa", "score": 20},
      ],
    },
    {
      "Question": "Total number of Oceans in the world is",
      "Answers": [
        {"text": "3", "score": 0},
        {"text": "5", "score": 20},
        {"text": "7", "score": 0},
        {"text": "12", "score": 0},
      ],
    },
    {
      "Question": "Which Country has the World's largest Prison Population?",
      "Answers": [
        {"text": "India", "score": 0},
        {"text": "China", "score": 0},
        {"text": "USA", "score": 20},
        {"text": "Brazil", "score": 0},
      ],
    },
    {
      "Question": "Which Country has the most number of lakes",
      "Answers": [
        {"text": "Canada", "score": 20},
        {"text": "USA", "score": 0},
        {"text": "Finland", "score": 0},
        {"text": "Brazil", "score": 0},
      ],
    },
    {
      "Question": "Which Country has the highest number of time zones?",
      "Answers": [
        {"text": "England", "score": 0},
        {"text": "France", "score": 20},
        {"text": "Russia", "score": 0},
        {"text": "China", "score": 0},
      ],
    }
  ];

  var _questionIndex = 0;
  var _sumScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _sumScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _sumScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Questions App",
              textAlign: TextAlign.center,
            ),
          ),
          body: Column(
            children: [
              SizedBox(height: 30),
              _questionIndex < _questions.length
                  ? Quiz(
                      questions: _questions,
                      questionIndex: _questionIndex,
                      answerQuestions: _answerQuestions)
                  : Result(_sumScore, _resetQuiz),
            ],
          )),
    );
  }
}
