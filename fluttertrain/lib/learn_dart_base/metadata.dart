import 'todo.dart';

void main() {
  dynamic tv = new Television();
  tv.activate();
  tv.turnOn();
  tv.turnOff();
}

class Television {
  @deprecated
  void activate() {
    turnOn();
  }

  void turnOn() {
    print('Television turn on!');
  }

  @override
  noSuchMethod(Invocation mirror) {
    print('没有找到方法');
  }

  //自定义注解
  @Todo(name: "Tongson", what: "create a new method")
  void doSomething() {
    print('doSomething');
  }
}
