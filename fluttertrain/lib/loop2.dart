import 'dart:async';

void main() {
  testScheduleMicrotask();
}

//异步-scheduleMicrotask()
void testScheduleMicrotask() {
  scheduleMicrotask(() => print('s1')); //微任务
  //delay 延迟
  new Future.delayed(new Duration(seconds: 1), () => print('s2seconds'));
  new Future.delayed(
      new Duration(milliseconds: 500), () => print('s2milliseconds'));
  new Future.delayed(
      new Duration(microseconds: 5), () => print('s2microseconds'));

  new Future(() => print('s3'))
      .then((_) {
        print('s4');
        scheduleMicrotask(() => print('s5'));
      })
      .then((_) => print('s6'))
      .then((_) => print('s66'))
      .then((_) => print('s666'));

  new Future(() => print('s7'));

  scheduleMicrotask(() => print('s8'));

  print('s9');
}
