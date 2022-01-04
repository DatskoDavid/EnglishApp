import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function answerHandler;

  Answer(
    this.text,
    this.answerHandler,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () => answerHandler(),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
