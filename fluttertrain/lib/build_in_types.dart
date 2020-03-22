void main() {
  String s = 'Tongson' + '';
  String s1 = "Tongson"
      "learn"
      "??dart";

  String s2 = '''
  Tongson 
  learning 
  dart\n
  666
  
  ''';
  String s3 = r'''
  Tongson 
  learning 
  dart\n
  666
  
  ''';

  print(s);
  print(s1);
  print(s2);
  print(s3);

  StringBuffer sb = StringBuffer();
  sb.write("Tongosn");
  sb.write("learning");
  sb.write("flutter");
  sb.write("dart");

  //集联符，链式调用
  sb
    ..write("666")
    ..write("7?")
    ..write("hello")
    ..writeAll(['a', 'b', 'c']);
  print(sb);
  print(Map);
//  bool isNull;
//  if (!isNull) {
//    print("not");
//  }

//  Dart中可以直接打印list包括list的元素，List也是对象。
//  java中直接打印list结果是地址值
//  Dart中List的下标索引和java一样从0开始和java一样支持泛型。
//  有增删改查，支持倒序，自带排序、洗牌，可使用+将两个List合并

  List ls = List();
  ls.add(123);
  ls.add(123);
  ls.add(123);
  ls.add(123);
  ls.add(123);

//  Map 更Java类似

//Set

  Set set1 = Set();
  Set set2 = Set();
  set1.addAll([1, 2, 3, 4, 5, 1, 23, 4]);
  set2.addAll([1, 2, 3, 4, 5, 345, 6, 7, 8]);
  //补集
  var difference = set1.difference(set2);
  print(set1);
  print(difference);

  //交集
  var intersection = set1.intersection(set2);
  print(intersection);

//并集
  var union = set1.union(set2);
  print(union);

  set1.retainAll(set2);
  print(set1);

  Runes runes = new Runes('\u{1f605}\u6211');
  var str1 = String.fromCharCodes(runes);
  print(str1);

  //Symbol标识符，主要是反射用，现在mirrors模块已经被移除
}
