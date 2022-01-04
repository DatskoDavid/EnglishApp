import 'package:english_app/presentation/widgets/answer.dart';
import 'package:english_app/presentation/widgets/question.dart';
import '../../data/questions.dart';
import 'answer.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final int questionId;
  final String questionText;
  final Function answerQuestion;
  final List answers;

  Quiz({
    required this.questionId,
    required this.questionText,
    required this.answerQuestion,
    required this.answers,
  });



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(id: questionId, text: questionText),
        ...(questions[questionId]['answer'] as List<Map<String, Object>>).map((answer) {
        return Answer(text: answer['text'] as String, answerHandler: () => answerQuestion(answer['score'] as String));
      }).toList(),

    
      ],
    );
  }
}
