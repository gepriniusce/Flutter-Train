import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialCard',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _buildCard(),
          _buildCard(),
          _buildCard(),
        ],
      ),
    );
  }

/*
Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(const Radius.circular(15.0)),
            ),
          ),*/
  Card _buildCard() {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/timg.jpeg',
            width: double.infinity,
            height: 150.0,
            fit: BoxFit.contain,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Icon(Icons.home),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Tongson',
                      style: TextStyle(fontSize: 22.0),
                    ),
                    Text(
                      'learning flutter',
                      style: TextStyle(fontSize: 14.0),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Text('66'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
