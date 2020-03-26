import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text示例'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person),
              SizedBox(
                height: 10.0,
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
              Container(
                color: Colors.blue,
                height: 10.0,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('RaisedButton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
