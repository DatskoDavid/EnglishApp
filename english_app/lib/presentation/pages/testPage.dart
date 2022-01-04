import '../widgets/quiz.dart';
import 'package:flutter/material.dart';
import '../../data/questions.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  var _questionId = 0;

/*   void setState(){

  }  */

  void answerQuestion(){
    print("Choose variant");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Center(
        child: Quiz(
          questionId: _questionId,
          questionText: (questions[_questionId]['questionText']) as String,
          answerQuestion: answerQuestion,
          answers: [],
        ),
      ),
    );
  }
}
