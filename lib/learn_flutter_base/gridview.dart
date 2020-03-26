import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView示例'),
        ),
        body: //_buildGridView(),
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  print("$index");

                  return Container(
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
                    transform: Matrix4.rotationZ(3.14/9),
                  );


                }),
      ),
    );
  }

  GridView _buildGridView() {
    return GridView.count(
      crossAxisCount: 2,
      //scrollDirection: Axis.horizontal,
      childAspectRatio: 2 / 3,
      children: List.generate(20, (index) {
        return Container(
          color: Colors.blue,
          margin: EdgeInsets.all(10.0),
          child: Text('$index', style: TextStyle(fontSize: 20.0)),
        );
      }),
    );
  }
}
