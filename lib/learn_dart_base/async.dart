import 'dart:async';

void main() {
  getName1();
  getName2();
  getName3();
  //异步任务的函数
  new Future(() => futureTask())
      .then((m) => "result:$m") //任务执行完后的子任务
      .then((l) => l.length) //其中m为上个任务执行完后的返回的结果
      .then((r) => print('$r'))
      .then((_) => new Future.error('抛出一个错误！'))
      .whenComplete(() => print("whenComplete")) //所有任务完成后的回调函数
      .catchError((e) => print(e), test: (Object o) {
    print('test');
    return false;
  });
}

futureTask() => 10;

Future getName1() async {
  await getStr1();
  await getStr2();
  print('getName1');
}

getStr1() {
  print('getStr1');
}

getStr2() {
  print('getStr2');
}

getName2() {
  print('getName2');
}

getName3() {
  print('getName3');
}
