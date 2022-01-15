import 'package:flutter/material.dart';
import 'testMode/testPage.dart';
import 'inputWordMode/inputWordPage.dart';

class HomePage extends StatelessWidget {
  void navigate(BuildContext ctx, Widget widget) {
    print('Clicked *Test* button');
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return widget;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue[100],
        padding: EdgeInsets.all(20),
        /* width: 250,
        height: 340, */
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.settings,
                  size: 35,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'English App',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () => navigate(context, Test()),
                child: Text(
                  'Test',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () => navigate(context, InputWord()),
                child: Text(
                  'Input word',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
