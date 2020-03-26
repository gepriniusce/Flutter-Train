import 'dart:math';

import 'package:dio/dio.dart';

//导入文件
//import 'mylib.dart';

//部分导入，筛选某些部分
//import 'mylib.dart' show Test;
//import 'mylib.dart' hide Test;

//延迟导入
//import 'mylib.dart' deferred as lazyLib;
//
//lazyLoad() async {
//  await lazyLib.loadLibrary();
//}

import 'mylib.dart' as lib1;
import 'mylib2.dart' as lib2;

//自定义库
import 'core/lib.dart';

void main() {
  print(sqrt(9));

  lib1.Test();
  lib2.Test();

  doTool();

  doUtil();


  getHttp();
}


void getHttp() async {
  try {
    Response response = await Dio().get("http://www.baidu.com");
    print(response);
  } catch (e) {
    print(e);
  }
}
