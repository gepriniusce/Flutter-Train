import 'dart:async';

void main() {
  var it = getSyncGenerator(5).iterator;
  while (it.moveNext()) {
    print(it.current);
  }

  StreamSubscription subscription = getAsyncGenerator(5).listen(null);
  subscription.onData((value) {
    print(value);
    if (value >= 2) {
      subscription.pause();
    }
  });
}

//有同步和异步
//同步
Iterable<int> getSyncGenerator(int n) sync* {
  print('start');
  int k = 0;
  while (k < n) {
    //暂停等待下一个moveNext再执行
    yield k++;
  }
  print('end');
}

//异步
Stream<int> getAsyncGenerator(int n) async* {
  print('start');
  int k = 0;
  while (k < n) {
    yield k++;
  }
  print('end');
}

//递归生成器
Iterable<int> getSyncGeneratorRe(int n) sync* {
  if (n > 0) {
    yield n;
    yield* getSyncGeneratorRe(n - 1);
  }
}
