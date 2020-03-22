void main() {
//  var point = Point.name({'x': 1, 'y': 2});
//  print(point);
//  print([point.x, point.y]);

//  Child child = Child.name(12, 12);
//  print([child.x, child.y]);

  Point2 p2 = const Point2(1, 2);
  print(p2);
  Point2 p21 = const Point2(1, 2);
  Point2 p22 = const Point2(1, 2);
  Point2 p23 = const Point2(1, 3);
  print(identical(p21, p22));
  print(identical(p21, p23));
}

class Point {
  num x;
  num y;

  Point(this.x, this.y);

  //java
//  Point(x, y) {
//    this.x = x;
//    this.y = y;
//  }

  //命名构造函数
  Point.name(Map json) {
    x = json['x'];
    y = json['y'];
  }

  //重定向构造函数，使用冒号调用其他构造函数
  Point.name2(num x) : this(x, 0);
}

/**
 * 常量构造函数
 */
class Point2 {
  final num x;
  final num y;

  const Point2(this.x, this.y);

  @override
  String toString() {
    return 'Point2(x=$x,y=$y)';
  }
}

class Child extends Parent {
  int x;
  int y;

  /**
   * 调用父类构造函数的参数无法访问this
   */
  Child(x, y) : super.name(x, y) {
    print("子类构造函数");
  }

  Child.name(x, y)
      : x = x,
        y = y,
        super.name(x, y) {
    print("子类命名构造函数");
  }
}

class Parent {
  int x;
  int y;

  Parent.name(x, y)
      : x = x,
        y = y {
    print("父类命名构造函数");
  }
}
