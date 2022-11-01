import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answer': ['Black', 'White', 'Red', 'Green', 'Yellow'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answer': ['Rabbit', 'Snake', 'Monkey', 'Lion', 'Dog'],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answer': ['Max', 'Joel', 'Emma', 'Moses', 'Jones'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList() 
                
          ],
        ),
      ),
    );
  }
}
