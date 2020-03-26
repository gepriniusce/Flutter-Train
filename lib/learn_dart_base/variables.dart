void main() {
  //========》变量声明
  //var  dynamic Object
  //未初始化变量声明
  var data;
  data = 1;
  data = "aaaaaa";

  //声明初始化变量
  var data1 = 123;
//  data1="1231234";

  Object data2 = "123";
  data2 = 123;

  //编译时不检查类型，
  dynamic d1 = "123";
  //运行时报错
//  d1.test();
  //编译时检查类型
  Object o1 = "121";
//  o1.test();

/*如果没有初始值，var可以变成任何类型
dynamic：动态任意类型，编译阶段不检查类型
Object：动态任意类型，编译阶段检查检查类型
区别：
唯一区别 var 如果有初始值，类型被锁定。
*/

/*没有初始化的变量自动获取一个默认值为null
一切皆对象，对象的默认值为null*/
/*

  final和const
  共同点：
  1声明的类型可省略
  2初始化后不能再赋值
  3不能和var同时使用

区别（需要注意的地方）：
1.类级别常量，使用static const
2.const可使用其他const 常量的值来初始化其值
3.使用const赋值声明，const可省略
4.可以更改非final、非const变量的值，即使曾经具有const值
5.const导致的不可变性是可传递的
6.相同的const常量不会在内存中重复创建
7.const需要是编译时常量




*/

  final fVar = 'Tongson';
//final String fVar='Tongson';
  const cVar = 'Tongson';
//const String cVar='Tongson';

//2
  const width = 100;
  const height = 100;
  const square = width * height;

  //3
  const list = const [];
  const list2 = [];
//  DateTime

  var list3 = const [1, 2, 3];
  const list4 = const [1, 2, 3];
  final list5 = const [1, 2, 3];

//  list3[2] = 0;
//  list4[2] = 0;
//  list5[2] = 0;

  list3 = [1];
//  list4 = [5];
//  list5 = [6];

  print(list3);
  print(list4);
  print(list5);

  final List ls = [1, 2, 3];
  ls[1] = 0;
  print(ls);
//  const List ls1 = [1, 2, 3];
//  ls1[1] = 0;
//  print(ls1);

  final List ls2 = [1, 2, 3];
  final List ls3 = [1, 2, 3];
  print(identical(ls2, ls3));

  const List ls4 = [1, 2, 3];
  const List ls5 = [1, 2, 3];
  print(identical(ls4, ls5));
  var ls6 = [1, 2, 3];
  var ls7 = [1, 2, 3];
  print(identical(ls6, ls7));

  final dt = DateTime.now();
  //编译时常量
  //const dt2 = DateTime.now();
  print(dt);




















}
