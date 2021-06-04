import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String awn;
  final void Function() onSelected;

  Answer(this.awn, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(awn),
        onPressed: onSelected,
      ),
    );
  }
}
