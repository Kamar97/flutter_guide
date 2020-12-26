import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function restartQuiz;

  Result(this._resultScore, this.restartQuiz);
  String get resultTex {
    String resultText;
    if (_resultScore < 8) {
      resultText = 'you did it';
    } else if (_resultScore > 8) {
      resultText = 'you are not very awsome';
    } else {
      resultText = 'you are not very awsome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            resultTex,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
        ),
        FlatButton(
          onPressed: restartQuiz,
          child: Text('Restart Quiz'),
        ),
      ],
    );
  }
}
