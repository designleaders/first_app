import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'the quiz is completed!';
    if (resultScore >= 8) {
      resultText = 'you are excellent! You got  -$resultScore';
    } else if (resultScore >= 5) {
      resultText = 'you are good, You got -$resultScore';
    } else if (resultScore >= 3) {
      resultText = 'you are pass, You got -$resultScore';
    } else {
      resultText = 'you failed! You got -$resultScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.blue[700],
            textColor: Colors.white,
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
