import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String AnswerText;

  Answer(this.selectHandler, this.AnswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color.fromARGB(255, 33, 239, 2),
        textColor: Colors.white,
        child: Text(AnswerText),
        onPressed: selectHandler,
      ),
    );
  }
}
