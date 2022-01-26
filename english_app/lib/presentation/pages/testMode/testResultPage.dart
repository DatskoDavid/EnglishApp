import 'package:flutter/material.dart';
import '../../../data/questions.dart';

class Result extends StatelessWidget {
  final int totalScore;
  Color messageColor = Colors.indigo;

  Result(
    this.totalScore,
  );

  String createResultMessage(int score) {
    String message;

    if ((score <= questions.length) && (score >= (questions.length/100*75))) {
      message = "Very good";
      messageColor = Colors.green;
    } else if ((score >= (questions.length/100*40))) {
      message = "Not bad, but u have some work";
      messageColor = Colors.yellow;
    } else {
      message = "STUDY ENGLISH !!!";
      messageColor = Colors.redAccent;
    }

    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "You answered right on $totalScore questions",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.teal,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          createResultMessage(totalScore),
          style: TextStyle(
            fontSize: 25,
            color: messageColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ));
  }
}


/* switch (score) {
      case (score <=10) && (score <=8) :
        message = "Very good";
        messageColor = Colors.green;
        break;
      case 2:
        message = "Not bad, but u have some work";
        messageColor = Colors.grey;
        break;
      case 1 | 0:
        message = "STUDY ENGLISH !!!";
        messageColor = Colors.redAccent;
        break;
     /*  case 0:
        message = "STUDY ENGLISH !!!";
        messageColor = Colors.redAccent;
        break; */
      default:
        message = "";
    } */