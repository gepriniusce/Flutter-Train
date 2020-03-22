void main() {
  /*
后缀操作
expr++ expr-- () [] . ?.
前缀操作
-expr !expr ~expr ++expr --expr
乘除
* /  %  ~/
加减
+ -
位移
<< >>
按位与
&
按位异或
^
按位或
|
类型操作
>= > <= < as is is!
相等
== !=
逻辑与
&&
逻辑或
||
是否为空
??
三目运算
expr1 ? expr2 : expr3
级联
..
赋值
= *= /= ~/= %= += -= <<= >>= &= ^= |= ??=
*/

  //?.
  String s;
  print(s?.length);


  //~/
  print(1/2);
  //先1/2，然后干掉小数点。取商
  print(10~/2);

  //as is is!
  num n=1;
  num n1=1.0;
  int i=n as int;
  //is
  print(n is int);
  //is!
  print(n is! int);

  //三目运算符  条件?表达式1:表达式2
  //??
  bool isNull=false;
  String ss=isNull?'':'';
  bool isPaused;
  isPaused=isPaused??false;
  //

  //..级联操作符




}
