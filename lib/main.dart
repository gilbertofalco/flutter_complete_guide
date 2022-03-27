import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What\'s your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 50},
        {"text": "Blue", "score": 5},
        {"text": "Pink", "score": 40},
      ],
    },
    {
      "questionText": "What\'s your favorite animal?",
      "answers": [
        {"text": "Dog", "score": 10},
        {"text": "Cat", "score": 50},
        {"text": "Rabbit", "score": 5},
        {"text": "Snake", "score": 40}
      ]
    },
    {
      "questionText": "What\'s your favorite OS?",
      "answers": [
        {"text": "Linux", "score": 10},
        {"text": "Windows", "score": 50},
        {"text": "MacOS", "score": 5},
        {"text": "Android", "score": 40},
      ]
    },
    {
      "questionText": "What\'s your favorite game?",
      "answers": [
        {"text": "Zelda", "score": 10},
        {"text": "Mario", "score": 50},
        {"text": "Banjo-Kazooie", "score": 5},
        {"text": "Mario Kart", "score": 40},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[800],
          title: Center(child: Text("Questions <3")),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
