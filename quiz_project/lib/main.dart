import 'package:flutter/material.dart';
import './forms.dart';
import './result.dart';

main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _indexQuestion = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'text': 'Qual sua cor favorita?',
      'answers': [
        {
          'text': 'Azul',
          'score': 5,
        },
        {
          'text': 'Vermelho',
          'score': 10,
        },
        {
          'text': 'Laranja',
          'score': 3,
        },
        {
          'text': 'Preto',
          'score': 2,
        },
      ],
    },
    {
      'text': 'Qual seu energético favorito?',
      'answers': [
        {
          'text': 'Redbull',
          'score': 9,
        },
        {
          'text': 'Monster',
          'score': 10,
        },
        {
          'text': 'Power',
          'score': 3,
        },
        {
          'text': 'Punisher',
          'score': 3,
        },
      ],
    },
    {
      'text': 'Qual seu dev favorito?',
      'answers': [
        {
          'text': 'Dyokin',
          'score': 2,
        },
        {
          'text': 'Smoow',
          'score': 10,
        },
        {
          'text': 'Izzas',
          'score': 2,
        },
        {
          'text': 'Luizzas',
          'score': 2,
        },
      ],
    },
  ];

  void _responder(int point) {
    if (hasSelectedAnswer) {
      setState(() {
        _indexQuestion++;
        _totalScore += point;
      });
    }

    print(_totalScore);
  }

  bool get hasSelectedAnswer {
    return _indexQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: hasSelectedAnswer
            ? Forms(
                questions: _questions,
                indexQuestion: _indexQuestion,
                responder: _responder)
            : Result(_totalScore),
      ),
    );
  }
}
