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
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.blue[900],
          fontSize: 40,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
