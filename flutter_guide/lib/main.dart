import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 9},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 8},
        {'text': 'Yellow', 'score': 5},
        {'text': 'Blue', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 2},
        {'text': 'Monkey', 'score': 6},
        {'text': 'Lion', 'score': 1},
        {'text': 'Dog', 'score': 2}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answer': [
        {'text': 'Max', 'score': 2},
        {'text': 'Joel', 'score': 3},
        {'text': 'Emma', 'score': 9},
        {'text': 'Moses', 'score': 4},
        {'text': 'Jones', 'score': 5}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore)),
    );
  }
}
