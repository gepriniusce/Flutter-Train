import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

var images = [
  'assets/images/timg.jpeg',
  'assets/images/timg.jpeg',
  'assets/images/timg.jpeg',
  'assets/images/timg.jpeg',
  'assets/images/timg.jpeg',
  'assets/images/timg.jpeg',
  'assets/images/timg.jpeg',
  'assets/images/timg.jpeg',
];

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListWheelScrollView(
//          perspective: 0.003,
//          diameterRatio: 2.0,
          diameterRatio: 2.0,
          itemExtent: MediaQuery.of(context).size.height * 0.5,
          children: <Widget>[
            Image.asset(
              'assets/images/timg.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/timg.jpeg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/timg.jpeg',
              fit: BoxFit.cover,
            ),
          ].toList(),
//          images.map((m)=>NewWidget(m)).toList(),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  String imagePath;

  NewWidget(String m) {
    imagePath = m;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 30.0,
            left: 30.0,
            child: Text(
              '张满月',
              style: TextStyle(color: Colors.green, fontSize: 30.0),
            ),
          )
        ],
      ),
    );
  }
}
