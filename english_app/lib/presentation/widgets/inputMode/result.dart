import 'package:english_app/presentation/widgets/inputMode/form.dart';
import 'package:flutter/material.dart';

class InputWordResult extends StatelessWidget {
  final Function buttonHandler;
  final bool isInputMode;
  final bool isRightAnswer;
  final String rightWord;

  InputWordResult(
    this.buttonHandler,
    this.isInputMode,
    this.isRightAnswer,
    this.rightWord,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: Column(
        children: [
          Visibility(
            visible: !isRightAnswer,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                InputWordForm.wordController.text,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Licorice.ttf",
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Text(
              rightWord,
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Licorice.ttf",
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            child: Text(
              'Next',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () => buttonHandler(),
          ),
        ],
      )),
    );
  }
}
