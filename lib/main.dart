import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'dart:ui';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  // var questions = [
  //   'Whats\'s your name',
  //   'Whats\'s your age',
  //   'What\'s your favourite animal?',
  //   'Whose your favourite instructer?'
  // ];

  var questions = [
    {
      'questionText': 'Whose your favourite person',
      'questionAnswer': ['Max', 'Lara', 'Hala']
    },
    {
      'questionText': 'which your favourite animal',
      'questionAnswer': ['dog', 'cat', 'elephant']
    },
    {
      'questionText': 'which your favourite instructor',
      'questionAnswer': ['dog', 'cat', 'elephant'],
    },
  ];

  void _answerQuestions() {
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
        body: _questionIndex<questions.length?
        Quiz(questions, _questionIndex, _answerQuestions)



:Center(child: Text('You did it '),)
      ),
    );
  }
}
