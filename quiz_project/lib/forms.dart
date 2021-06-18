import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Forms extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int indexQuestion;
  final void Function() responder;

  Forms({
    @required this.questions,
    @required this.indexQuestion,
    @required this.responder,
  });

  bool get hasSelectedAnswer {
    return indexQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers =
        hasSelectedAnswer ? questions[indexQuestion]['answers'] : null;

    return Column(
      children: [
        Question(questions[indexQuestion]['text']),
        ...answers.map((t) => Answer(t, responder)).toList(),
      ],
    );
  }
}
