import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("ListView示例"),
          ),
          body: DismissibleList()),
    );
  }
}

class DismissibleList extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'item$index');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
              onDismissed: (_) {
                items.removeAt(index);
              },
              movementDuration: Duration(milliseconds: 5000),
              key: Key(item),
              child: ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text('titlefavorite_border$index'),
                subtitle: Text('subtitlefavorite_border'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            background: Container(color: Colors.blue,),
          );
        });
  }
}
