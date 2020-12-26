import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'dart:ui';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // var questions = [
  //   'Whats\'s your name',
  //   'Whats\'s your age',
  //   'What\'s your favourite animal?',
  //   'Whose your favourite instructer?'
  // ];

  var questions = [
    {
      'questionText': 'What\'s your favouroite color',
      'questionAnswer': [
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 2},
      ]
    },
    {
      'questionText': 'which your favourite animal',
      'questionAnswer': [
        {'text': 'cat', 'score': 8},
        {'text': 'elephant', 'score': 7},
        {'text': 'lion', 'score': 5},
      ],
    },
    {
      'questionText': 'which your favourite instructor',
      'questionAnswer': [
        {'text': 'Lara', 'score': 3},
        {'text': 'Hala', 'score': 7},
        {'text': 'Yara', 'score': 6},
      ],
    },
  ];

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions, _questionIndex, _answerQuestions)
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
