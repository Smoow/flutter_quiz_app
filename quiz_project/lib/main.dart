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
  final _questions = const [
    {
      'text': 'Qual sua cor favorita?',
      'answers': ['Azul', 'Vermelho', 'Laranja', 'Preto'],
    },
    {
      'text': 'Qual seu energético favorito??',
      'answers': ['Redbull', 'Monster', 'Power', 'Punisher'],
    },
    {
      'text': 'Qual seu dev favorito?',
      'answers': ['Dyokin', 'Smoow', 'Izzas', 'Luizzas'],
    },
  ];

  void _responder() {
    if (hasSelectedAnswer) {
      setState(() {
        _indexQuestion++;
      });
    }
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
            : Result(),
      ),
    );
  }
}
