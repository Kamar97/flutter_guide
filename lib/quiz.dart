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
    return Container(
      child: Column(
        children: <Widget>[
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['questionAnswer']
                  as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => answerQuestions(answer['score']), answer['text']);
          }).toList(),
        ],
      ),
    );
  }
}
