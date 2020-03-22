void main() {
  testFuture();
}

//异步-new Future()
void testFuture() {
  //new 一个Future会放到事件队列，Future执行完如果再then则会放到微任务队列

  Future f = new Future(() => print('f1'));
  Future f1 = new Future(() => null);
  //Future f1 = new Future.delayed(Duration(seconds: 1) ,() => null);
  Future f2 = new Future(() => null);
  Future f3 = new Future(() => null);
  f3.then((_) => print('f2'));
  f2.then((_) {
    print('f3');
    new Future(() => print('f4'));
    f1.then((_) {
      print('f5');
    });
  });
  f1.then((m) {
    print('f6');
  });
  print('f7');
}
