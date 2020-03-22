void main() {}

/**
 * 单例
 */
class Sington {
  String name;
  static Sington _cache;

  //工厂构造函数无法访问this
//工厂函数不会自动生成实例，通过代码来决定返回的实例对象
//  factory Sington([String name = 'Sington']) {
//    if (Sington._cache == null) {
//      Sington._cache =  Sington._newObject(name);
//    }
//    return Sington._cache;
//  }
  factory Sington([String name = 'Sington']) =>
      Sington._cache ??= Sington._newObject(name);

  //命名构造函数
  Sington._newObject(this.name);
}







