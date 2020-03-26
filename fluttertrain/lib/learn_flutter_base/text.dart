import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

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
                Text(
                  '比你优秀的人永远比你努力？',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.wavy,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RichText(
                  text: TextSpan(
                    text: '工资是学习的动力',
                    style: TextStyle(color: Colors.red, fontSize: 20.0),
                    children: <TextSpan>[
                      TextSpan(text: '努力学习天天向上'),
                      TextSpan(
                          text: '超级连接百度',
                          style: TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              String url = 'https://www.baidu.com/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'error:$url';
                              }
                            },
                      )],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
