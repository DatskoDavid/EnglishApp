import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final int id;
  final String text;

  Question({
    required this.id,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.blue[900],
        fontSize: 10,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
