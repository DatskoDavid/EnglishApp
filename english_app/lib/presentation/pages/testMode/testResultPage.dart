import 'package:flutter/material.dart';
//import '../../../data/questions.dart';

class Result extends StatelessWidget {
  final int totalScore;
  Color messageColor = Colors.indigo;
  //final int questionQuantity;

  Result(
    this.totalScore,
  );

  String createResultMessage(int score) {
    String message;

    if ((score <= 10) && (score >= 8)) {
      message = "Very good";
      messageColor = Colors.green;
    } else if ((score <= 7) && (score >= 4)) {
      message = "Not bad, but u have some work";
      messageColor = Colors.grey;
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
          style: TextStyle(
            fontFamily: "Raleway-Regular.ttf",
            fontSize: 25,
            color: Colors.teal,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          createResultMessage(totalScore),
          style: TextStyle(
            fontFamily: "Raleway-Regular.ttf",
            fontSize: 25,
            color: messageColor,
            fontWeight: FontWeight.w600,
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