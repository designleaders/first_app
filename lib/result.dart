import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHnadler;

  Result(this.resultScore, this.resetHnadler);

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
              textColor: Colors.blue,
              color: Colors.grey[100],
              child: Text(
                'Restart Quiz!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: resetHnadler),
        ],
      ),
    );
  }
}
