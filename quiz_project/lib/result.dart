import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

  String get resultPhrase {
    if (score < 8) {
      return 'Parabéns!!';
    } else if (score < 16) {
      return 'Manja mesmo!!';
    } else if (score < 25) {
      return 'Inacreditável!! Demais!';
    } else {
      return 'Nível JEDI!!!!!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
