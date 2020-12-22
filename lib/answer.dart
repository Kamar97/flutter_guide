import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
   String questionText;
  final Function buttonAction;
  Answer(this.buttonAction,this.questionText);
  Widget build(BuildContext context) {
    return RaisedButton(child: Text(questionText), onPressed: buttonAction);
  }
}
