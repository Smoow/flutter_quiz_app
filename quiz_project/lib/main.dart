import 'package:flutter/material.dart';
import './question.dart';

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
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual sua cor favorita?',
      'Qual o melhor dev?',
      'Energético?',
      'Nova pergunta 04',
      'Outra pergunta 05'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(perguntas[_indexPergunta]),
            ElevatedButton(child: Text('Resposta 1'), onPressed: _responder),
            ElevatedButton(child: Text('Resposta 2'), onPressed: _responder),
            ElevatedButton(child: Text('Resposta 3'), onPressed: _responder),
          ],
        ),
      ),
    );
  }
}
