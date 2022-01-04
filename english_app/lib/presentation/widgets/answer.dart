import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function answerHandler;

  Answer({
    required this.text,
    required this.answerHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.blue[900],
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
