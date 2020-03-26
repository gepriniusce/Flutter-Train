void main() {
//  var androidPhone = Phone('Android');
//  var iOSPhone = Phone('iOS');
//
//  androidPhone.call();
//  androidPhone.sendMessage();
//  iOSPhone.call();
//  iOSPhone.sendMessage();

//  var androidPhone = phoneFactory('Android');
//  var iOSPhone = phoneFactory('iOS');
//
//  androidPhone.call();
//  androidPhone.sendMessage();
//  iOSPhone.call();
//  iOSPhone.sendMessage();

  var cf = new ClassFunction();
  var out = cf("kotlin","dart","java");
  print('$out');
  print(cf.runtimeType);
  print(out.runtimeType);
  print(cf is Function);

}

class ClassFunction {
  call(String a, String b, String c) => '$a $b $c!';
}


//
//Phone phoneFactory(String type){
//  switch(type){
//    case 'Android':
//      return Android();
//    case 'iOS':
//      return IOS();
//  }
//}
//
//
//abstract class Phone {
//  void call();
//
//  void sendMessage() {
//    print('666');
//  }
//}
//
//class Android extends Phone {
//  @override
//  void call() {
//    print("Android call");
//  }
//
//  @override
//  void sendMessage() {
//    print("Android sendMessage");
//  }
//}
//
//class IOS extends Phone {
//  @override
//  void call() {
//    print("iOS call");
//  }
//
//  @override
//  void sendMessage() {
//    print("IOS sendMessage");
//  }
//}







//
//abstract class Phone {
//  factory Phone(String type) {
//    switch (type) {
//      case 'Android':
//        return Android();
//      case 'iOS':
//        return IOS();
//    }
//  }
//
//  void call();
//
//  void sendMessage() {
//    print('666');
//  }
//}
//
//class Android implements Phone {
//  @override
//  void call() {
//    print("Android call");
//  }
//
//  @override
//  void sendMessage() {
//    print("Android sendMessage");
//  }
//}
//
//class IOS implements Phone {
//  @override
//  void call() {
//    print("iOS call");
//  }
//
//  @override
//  void sendMessage() {
//    print("IOS sendMessage");
//  }
//}
