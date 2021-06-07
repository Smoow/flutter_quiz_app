import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _indexPergunta = 0;
  final _perguntas = const [
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
        _indexPergunta++;
      });
    }
  }

  bool get hasSelectedAnswer {
    return _indexPergunta < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers =
        hasSelectedAnswer ? _perguntas[_indexPergunta]['answers'] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: hasSelectedAnswer
            ? Column(
                children: [
                  Question(_perguntas[_indexPergunta]['text']),
                  ...answers.map((t) => Answer(t, _responder)).toList(),
                ],
              )
            : null,
      ),
    );
  }
}
