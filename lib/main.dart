import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './Quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'red', 'score': 0},
        {'text': 'black', 'score': 0},
        {'text': 'yellow', 'score': 0},
        {'text': 'blue', 'score': 1},
        {'text': 'orange', 'score': 0},
      ]
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'camel', 'score': 0},
        {'text': 'cow', 'score': 0},
        {'text': 'goat', 'score': 0},
        {'text': 'tiger', 'score': 1},
        {'text': 'cat', 'score': 0},
      ]
    },
    {
      'questionText': 'what\'s your favorite country?',
      'answers': [
        {'text': 'USA', 'score': 0},
        {'text': 'UK', 'score': 0},
        {'text': 'EU', 'score': 0},
        {'text': 'BD', 'score': 1},
        {'text': 'UAE', 'score': 0},
      ]
    },
    {
      'questionText': 'what\'s our capital?',
      'answers': [
        {'text': 'khulna', 'score': 0},
        {'text': 'rajshahi', 'score': 0},
        {'text': 'syhlet', 'score': 0},
        {'text': 'dhaka', 'score': 1},
        {'text': 'chottogram', 'score': 0},
      ]
    },
    {
      'questionText': 'what\'s our common foods?',
      'answers': [
        {'text': 'banana', 'score': 0},
        {'text': 'potatoes', 'score': 0},
        {'text': 'barli', 'score': 0},
        {'text': 'rice', 'score': 1},
        {'text': 'pizza', 'score': 0},
      ]
    },
    {
      'questionText': 'what\'s our national fruit?',
      'answers': [
        {'text': 'mango', 'score': 0},
        {'text': 'apple', 'score': 0},
        {'text': 'grape', 'score': 0},
        {'text': 'jack fruit', 'score': 1},
        {'text': 'pine apple', 'score': 0},
      ]
    },
    {
      'questionText': 'who wrote our national anthem?',
      'answers': [
        {'text': 'kazi nazrul islam', 'score': 0},
        {'text': 'promoth chawdhury', 'score': 0},
        {'text': 'Sorotchandra chattapadhay', 'score': 0},
        {'text': 'Rabindranath Tagore', 'score': 1},
        {'text': 'Bivutovushon chattapaddhay', 'score': 0},
      ]
    },
    {
      'questionText': 'which country is our best donar?',
      'answers': [
        {'text': 'china', 'score': 0},
        {'text': 'canadaq', 'score': 0},
        {'text': 'india', 'score': 0},
        {'text': 'japan', 'score': 1},
        {'text': 'ameriaca', 'score': 0},
      ]
    },
    {
      'questionText': 'which company change its name as Metaverse?',
      'answers': [
        {'text': 'apple', 'score': 0},
        {'text': 'google', 'score': 0},
        {'text': 'amazon', 'score': 0},
        {'text': 'facebook', 'score': 1},
        {'text': 'twitter', 'score': 0},
      ]
    },
    {
      'questionText': 'who is the founder of SpaceX?',
      'answers': [
        {'text': 'stave jobs', 'score': 0},
        {'text': 'bill gates', 'score': 0},
        {'text': 'mark zukerberg', 'score': 0},
        {'text': 'elon mask', 'score': 1},
        {'text': 'jeff bejos', 'score': 0},
      ]
    },
  ];
  var _answerIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _answerIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    setState(() {
      _totalScore = _totalScore + score;
    });

    setState(() {
      _answerIndex = _answerIndex + 1;
    });

    if (_answerIndex < _questions.length) {
      print('you have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _answerIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                answerIndex: _answerIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
