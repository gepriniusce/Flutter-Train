import 'package:flutter/material.dart';
import 'package:fluttertrain/learn_flutter_base/animated-widget.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform(
          //创建一个四维矩阵
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.002)
            ..rotateX(_offset.dy * 0.01)
            ..rotateY(_offset.dx * 0.01),
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                _offset += details.delta;
              });
            },
            onDoubleTap: () {
              setState(() {
                _offset = Offset.zero;
              });
            },
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
