import 'package:flutter/widgets.dart';
import 'package:flutter_guide/answer.dart';
import 'package:flutter_guide/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;
  Quiz(this.questions, this.questionIndex, this.answerQuestions);

  @override
  Widget build(BuildContext context) {
    Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['questionAnswer'] as List<String>)
            .map((answer) {
          return Answer(answerQuestions, answer);
        }).toList(),
      ],
    );
  }
}
