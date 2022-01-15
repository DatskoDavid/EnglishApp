import 'package:english_app/data/definition.dart';
import 'package:flutter/material.dart';

class InputWord extends StatefulWidget {
  @override
  _InputWordState createState() => _InputWordState();
}

class _InputWordState extends State<InputWord> {
  final wordController = TextEditingController();

  static int wordIndex = 0;
  var textDefinition = definitions[wordIndex]["definition"] as String;
  var word = definitions[wordIndex]["word"] as String;
  var resultTextColor;

  String verifyWord(String text) {
    
    String message = "";

    if (wordController.text != "") {
      if (wordController.text == word){
        message = 'Right answer';
        resultTextColor = Colors.green;
      }
      else{
        message = 'Wrong answer';
        resultTextColor = Colors.red;
      }
    }

    print(message);
    return message;
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
        padding: const EdgeInsets.only(top: 40),
        height: 250,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                textDefinition,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Licorice.ttf",
                ),
              ),
              Container(
                width: 220,
                child: TextField(
                  controller: wordController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: Text("OK"),
                onPressed: () =>
                    (setState(() => () => verifyWord(wordController.text))),
              ),
              Text(
                // 'Entered text: ${wordController.text}',
                verifyWord(wordController.text),
                style: TextStyle(
                  color: resultTextColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              
              /* ------------ DONT WORK -------------
              if (wordController.text == word)
                Text(
                  'You answerd right!',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ), */
            ],
          ),
        ),
      ),
    );
  }
}
