import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent.';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable.';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          child: Text('Restart Quiz'),
          style: TextButton.styleFrom(primary: Colors.blue),
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
