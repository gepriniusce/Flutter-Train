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
  ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    list = List.generate(18, (i) => 'Item$i');
    _refresh();
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          _loadMore();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RefreshIndicator(
          displacement: 100.0,
          child: list == null || list.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  controller: _scrollController,
                  itemCount: list?.length + 1,
                  itemBuilder: (context, index) {
                    if (index == list.length) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    return ListTile(
                      title: Text(list[index]),
                    );
                  }),
          onRefresh: _refresh,
        ),
      ),
    );
  }

  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      setState(() {
        list =
            List.generate(Random().nextInt(20) + 15, (i) => '_refreshItem$i');
      });
    });
  }

  Future<void> _loadMore() async {
    await Future.delayed(Duration(seconds: 3), () {
      setState(() {
        list =
            List.generate(Random().nextInt(5) + 15, (i) => '_loadMoreItem$i');
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }
}
