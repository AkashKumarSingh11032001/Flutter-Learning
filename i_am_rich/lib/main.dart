import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I AM RICH"),
          backgroundColor: Colors.indigoAccent,
        ),
        backgroundColor: Colors.black87,
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://img.theweek.in/content/dam/week/news/biz-tech/images/2019/8/19/Representational-Image-bitcoin-CC0.jpg'),
          ),
        ),
      ),
    ),
  );
}
