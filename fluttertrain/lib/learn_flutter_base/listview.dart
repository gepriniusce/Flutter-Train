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
          body: //_buildListView(),
//            HorizontalListView(),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    print("$index");
                    if (index.isOdd) {
                      return Divider();
                    }
                    return ListTile(
                      leading: Icon(Icons.favorite_border),
                      title: Text('titlefavorite_border$index'),
                      subtitle: Text('subtitlefavorite_border'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    );
                  })),
    );
  }

  ListView _buildListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('titlefavorite_border'),
          subtitle: Text('subtitlefavorite_border'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        new Divider(),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('favorite_border'),
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('favorite_border'),
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('favorite_border'),
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('favorite_border'),
        ),
      ],
    );
  }
}

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      //generate=>一次性加载所有
      children: List.generate(100, (index) {
        return Text(
          '$index',
          style: TextStyle(fontSize: 20.0),
        );
      }),
    );
  }
}
