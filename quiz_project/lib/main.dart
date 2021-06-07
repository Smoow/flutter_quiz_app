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

  void _responder() {
    setState(() {
      _indexPergunta++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
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

    List<String> answers = perguntas[_indexPergunta]['answers'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(perguntas[_indexPergunta]['text']),
            ...answers.map((t) => Answer(t, _responder)).toList(),
          ],
        ),
      ),
    );
  }
}
