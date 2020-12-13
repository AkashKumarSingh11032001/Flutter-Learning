import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Center(
            child: Text('8-Ball'),
          ),
        ),
        body: Eight(),
      ),
    ),
  );
}

class Eight extends StatefulWidget {
  @override
  _EightState createState() => _EightState();
}

class _EightState extends State<Eight> {
  int ball = 1;
  void change() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset('images/ball$ball.png'),
            ),
            onPressed: () {
              change();
            },
          ),
        ),
      ],
    );
  }
}
