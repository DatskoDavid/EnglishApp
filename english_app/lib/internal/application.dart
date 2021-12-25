import 'package:flutter/material.dart';
import '../presentation/pages/homePage.dart';

class Application extends StatefulWidget {
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
        accentColor: Colors.indigo,
      ),
      home: Scaffold(
        /* appBar: AppBar(
          title: Text(
            'English App',
            textAlign: TextAlign.center,
          ),
        ), */
        body: HomePage(),
      ),
    );
  }
}