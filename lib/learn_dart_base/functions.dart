void main() {
/*=>*/

//=>

  int add2(int a, int b) => a + b;
  //可选命名参数{param1,param2,....}
  //int add3(int c, {int a, int b}) => a + b;
//可选位置参数[]
//  int add4(int a, [int b, int c]) => a + b;

  print(add2(1, 2));
  print(add3(6, a: 1, b: 2));
  print(add3(6));
  print(add4(
    1,
  ));

  //无参匿名
  var printFunc = () => print('Tognson');

  printFunc();
  //有参匿名
  var printFunc1 = (name) => print('${name}');
  printFunc1("Tongson---");

//().();()();不建议
  (() => print('Tognson'))();

  List test(List list, String func(str)) {
    for (var i = 0; i < list.length; i++) {
      list[i] = func(list[i]);
    }
    return list;
  }

  var ls = ['aaa', 'bbb', 'ccc'];
  print(test(ls, (str) => str * 2));

  ls.forEach((ele) => print(ele));

  //函数闭包
  Function makeAddFun(int a) {
    return (int y) => a + y;
  }

  var addFunc = makeAddFun(12);
  print(addFunc(22));

  //函数别名
  MyFunc myFunc = add(11, 22);
  myFunc = divide(44, 22);

  calculator(8, 2, add);
}

typedef MyFunc(int a, int b);

add(int a, int b) {
  print('${a + b}');
}

divide(int a, int b) {
  print('${a / b}');
}

calculator(int a, int b, MyFunc func) {
  func(a, b);
}

//int add(int a,int b){
//  return a+b;
//}

//int add(int a, int b) => a + b;

int add3(int c, {int a = 1, int b = 2}) => a + b;

int add4(int a, [int b = 1, int c = 2]) => a + b;

void l({List list = const [1, 2, 3]}) {}
