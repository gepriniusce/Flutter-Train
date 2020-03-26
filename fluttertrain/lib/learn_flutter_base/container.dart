import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container示例Demo'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            width: 200.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 10.0),
              borderRadius:const BorderRadius.all(const Radius.circular(10.0)),
            ),
//            color: Colors.red,
            child: Text(
              'Container',
              style: TextStyle(fontSize: 28.0),
            ),
            transform: Matrix4.rotationZ(pi/9),
          ),
        ),
      ),
    );
  }
}
