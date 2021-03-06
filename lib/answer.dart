import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  final String questionText;
  final Function buttonAction;
  Answer(this.buttonAction, this.questionText);
  Widget build(BuildContext context) {
    return Container(
        child:
            RaisedButton(child: Text(questionText), onPressed: buttonAction));
  }
}
