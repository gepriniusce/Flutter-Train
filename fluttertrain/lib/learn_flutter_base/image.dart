import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image示例demo'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              //加载网络图片
              Image.network(
                "https://timgsa.baidu"
                ".com/timg?image&quality=80&size=b9999_10000&sec"
                "=1584885997305&di=ecec48f5776e595ae492aae9b47bb0c4&imgtype=0&src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201908%2F24%2F20190824220527_unxan.thumb.700_0.jpg",
                width: 100.0,
                height: 100.0,
              ),
              Image.asset(
                'assets/images/timg.jpeg',
                width: 100.0,
                height: 100.0,
              ),
              //Memory
              MemoryImageWidget(),
              FileImageWidget(),
              //从文件加载图片
            ],
          ),
        ),
      ),
    );
  }
}

class FileImageWidget extends StatefulWidget {
  @override
  _FileImageWidgetState createState() => _FileImageWidgetState();
}

class _FileImageWidgetState extends State<FileImageWidget> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: _image == null
              ? Text('未选择图片！')
              : Image.file(_image, width: 200.0, height: 200.0),
        ),
        FlatButton(
          onPressed: getImage,
          child: Text(
            '选择图片',
            style: TextStyle(color: Colors.amberAccent),
          ),
        )
      ],
    );
  }
}

class MemoryImageWidget extends StatefulWidget {
  @override
  _MemoryImageWidget createState() => _MemoryImageWidget();
}

class _MemoryImageWidget extends State<MemoryImageWidget> {
  Uint8List bytes;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rootBundle.load('assets/images/timg.jpeg').then((data) {
      if (mounted) {
        setState(() {
          bytes = data.buffer.asUint8List();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _decoration = BoxDecoration(
      image: bytes == null ? null : DecorationImage(image: MemoryImage(bytes)),
    );

    return Container(
      width: 100.0,
      height: 100.0,
      decoration: _decoration,
    );
  }
}
