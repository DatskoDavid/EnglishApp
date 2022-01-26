import 'package:english_app/data/definition.dart';
import 'package:english_app/presentation/widgets/inputMode/definition.dart';
import 'package:english_app/presentation/widgets/inputMode/form.dart';
import 'package:english_app/presentation/widgets/inputMode/result.dart';
import 'package:flutter/material.dart';

class InputWord extends StatefulWidget {
  @override
  _InputWordState createState() => _InputWordState();
}

class _InputWordState extends State<InputWord> {
  static int wordIndex = 0;
  int rightAnswersCounter = 0;
  var isInputMode = true;
  var textDefinition = definitions[wordIndex]["definition"] as String;
  var word = definitions[wordIndex]["word"] as String;
  bool rightAnswer = false;

  bool verifyWord() {
    rightAnswer = false;

    if (InputWordForm.wordController.text != "") {
      if (InputWordForm.wordController.text == word) {
        rightAnswer = true;
        isInputMode = false;
        rightAnswersCounter++;
      } else {
        rightAnswer = false;
        isInputMode = false;
      }
    }
    return rightAnswer;
  }

  void nextQuestion() {
    setState(() {
      isInputMode = true;
      wordIndex++;
      textDefinition = definitions[wordIndex]["definition"] as String;
      word = definitions[wordIndex]["word"] as String;
      InputWordForm.wordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Input Word",
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: (wordIndex < definitions.length - 1)
              ? Column(
                  children: [
                    Definition(
                      textDefinition,
                    ),
                    Visibility(
                      visible: isInputMode,
                      child: InputWordForm(
                        () => setState(() => verifyWord()),
                        isInputMode,
                      ),
                    ),
                    Visibility(
                      visible: !isInputMode,
                      child: InputWordResult(
                        () => nextQuestion(),
                        isInputMode,
                        rightAnswer,
                        word,
                      ),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You answered right on $rightAnswersCounter questions from ${definitions.length}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(250, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: Text(
                          'Reset',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () => setState(() => wordIndex = -1),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
