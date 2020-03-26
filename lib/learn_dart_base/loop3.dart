import 'dart:async';

void main() {
  testScheduleMicrotask();
}

//异步-scheduleMicrotask()
void testScheduleMicrotask() {
  scheduleMicrotask(() => print('s1')); //微任务
  //delay 延迟
  Future.delayed(Duration(seconds: 1), () => print('s2seconds'));
  Future.delayed(Duration(milliseconds: 500), () => print('s2milliseconds'));
  Future.delayed(Duration(microseconds: 5), () => print('s2microseconds'));

  Future(() => print('s3'))
      .then((_) => Future(() => print('s13')))
      .then((_) {
        print('s4');
        scheduleMicrotask(() => print('s5'));
      })
      .then((_) => print('s6'))
      .then((_) => print('s66'))
      .then((_) => print('s666'));

  Future(() => print('s10'))
      .then((_) => Future(() => print('s11')))
      .then((_) => print('s12'));

  Future(() => print('s7'));

  scheduleMicrotask(() => print('s8'));

  print('s9');
}
