import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertrain/learn_flutter_base/3d.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = List.generate(Random().nextInt(20) + 10, (i) => 'initStateItem$i');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReorderableListView'),
      ),
      body: ReorderableListView(
        onReorder: _onReorder,
        children: list
            .map((m) => ListTile(
                  key: ObjectKey(m),
                  title: Text(m),
                ))
            .toList(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onReorder(int oldIndex, int newIndex) {
    print('oldIndex:$oldIndex,newIndex:$newIndex');
    setState(() {
      if (newIndex == list.length) {
        newIndex = list.length - 1;
      }
      var item = list.removeAt(oldIndex);
      list.insert(newIndex, item);
    });
  }
}
