import 'package:english_app/presentation/pages/resultPage.dart';

import '../widgets/quiz.dart';
import 'package:flutter/material.dart';
import '../../data/questions.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  var _questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    setState(() => _questionIndex++);
    totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Center(
        child: _questionIndex != questions.length
            ? Quiz(
                questionId: _questionIndex,
                questionText:
                    (questions[_questionIndex]['questionText']) as String,
                answerQuestion: answerQuestion,
                //answers: [],
              )
            : Result(totalScore),
      ),
    );
  }
}
