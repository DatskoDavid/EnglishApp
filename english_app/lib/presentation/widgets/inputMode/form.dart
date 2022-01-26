import 'package:flutter/material.dart';

class InputWordForm extends StatelessWidget {
  final Function buttonHandler;
  final bool isInputMode;
  static final wordController = TextEditingController();

  InputWordForm(
    this.buttonHandler,
    this.isInputMode,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
          children: [
            /* Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Text(
                definition,
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Licorice.ttf",
                ),
              ),
            ), */
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 250,
              child: TextField(
                controller: wordController,
                decoration: InputDecoration(
                  hintText: 'Enter word',
                  contentPadding: const EdgeInsets.only(left: 10),
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
            Container(
              //margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(250, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: Text(
                  'Check',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () => buttonHandler(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
