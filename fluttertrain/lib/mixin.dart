void main() {
  Bicycle().tranport();
  Motocycle().tranport();
  Car().tranport();

  var msgAB = AB().getMsg();
  print(msgAB);
  var msgBA = BA().getMsg();
  print(msgBA);
  var msgC = C().getMsg();
  print(msgC);
  var msgCC = CC().getMsg();
  print(msgCC);
}

/// 顺序问题

class A {
  String getMsg() => "A";
}

class B {
  String getMsg() => "B";
}

class P {
  String getMsg() => "P";
}

class AB extends P with A, B {}

class BA extends P with B, A {}

class C extends P with B, A {
  String getMsg() => 'C';
}

/// 这里implements只是表示了要实现A的方法
class CC extends P with B implements A {
//  String getMsg() => 'CC';
}

abstract class Transportation {
  void tranport();
}

abstract class TwoWheelTransportation {
  String powerUnit() => '2个轮子';
}

abstract class FourWheelTransportation {
  String powerUnit() => '4个轮子';
}

abstract class LowSafeTransportation {
  String safeIndex() => '低耗';
}

abstract class MiddleSafeTransportation {
  String safeIndex() => '中耗';
}

abstract class HighSafeTransportation {
  String safeIndex() => '高耗';
}

abstract class BodyEnergyTransportation {
  String energy() => '脚蹬';
}

abstract class GasEnergyTransportation {
  String energy() => '汽油';
}

class Bicycle extends Transportation
    with
        BodyEnergyTransportation,
        LowSafeTransportation,
        TwoWheelTransportation {
//  String safeIndex() => 'low';
//
//  String powerUnit() => '2个轮子';
//
//  String energy() => '脚蹬';

  @override
  void tranport() {
    print('Bicycle:\npowerUnit:${powerUnit()},safeIndex:${safeIndex()},'
        'energy:${energy()}');
  }
}

class Motocycle extends Transportation
    with
        TwoWheelTransportation,
        MiddleSafeTransportation,
        GasEnergyTransportation {
//  String safeIndex() => 'middle';
//
//  String powerUnit() => '2个轮子';
//
//  String energy() => '汽油';

  @override
  void tranport() {
    print('Motocycle:\npowerUnit:${powerUnit()},safeIndex:${safeIndex()},'
        'energy:${energy()}');
  }
}

class Car extends Transportation
    with
        HighSafeTransportation,
        GasEnergyTransportation,
        FourWheelTransportation {
//  String safeIndex() => 'high';
//
//  String powerUnit() => '4个轮子';
//
//  String energy() => '汽油';

  @override
  void tranport() {
    print('Car:\npowerUnit:${powerUnit()},safeIndex:${safeIndex()},'
        'energy:${energy()}');
  }
}
