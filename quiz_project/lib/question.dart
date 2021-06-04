import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qText;

  Question(this.qText);

  @override
  Widget build(BuildContext context) {
    return Text(qText);
  }
}
