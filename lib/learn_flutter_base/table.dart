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
      body: Center(
        child: Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(50.0),
            1: FixedColumnWidth(150.0),
            2: FixedColumnWidth(50.0),
            3: FixedColumnWidth(50.0),
          },
          border: TableBorder.all(
            color: Colors.red,
            width: 1.0,

          ),
          children: const <TableRow>[
            TableRow(
              children:[
                Text('1'),
                Text('2'),
                Text('3'),
                Text('4'),
              ],
            ),TableRow(
              children:[
                Text('1'),
                Text('2'),
                Text('3'),
                Text('4'),
              ],
            ),TableRow(
              children:[
                Text('1'),
                Text('2'),
                Text('3'),
                Text('4'),
              ],
            ),TableRow(
              children:[
                Text('1'),
                Text('2'),
                Text('3'),
                Text('4'),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
