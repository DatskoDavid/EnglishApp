import 'package:flutter/material.dart';

class Definition extends StatelessWidget {

  final String definition;

  Definition(
    this.definition,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
            child: Text(
              definition,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
  }
}