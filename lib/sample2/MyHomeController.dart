import 'package:flutter_mvc_app/sample2/MyHomeModel.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MyHomeController extends ControllerMVC {
  factory MyHomeController() {
    if (_this == null) _this = MyHomeController._();
    return _this;
  }
  static MyHomeController _this;

  MyHomeController._();

  /// Allow for easy access to 'the Controller' throughout the application.
  static MyHomeController get controller {
    return MyHomeController();
  }

  int get counter => MyHomeModel.counter;
  void incrementCounter() {
    /// The Controller knows how to 'talk to' the Model. It knows the name, but Model does the work.
    // Model._incrementCounter();
    // MyHomeModel._decrementCounter();
    MyHomeModel.incrementCounter();
  }
}

// class MyHomeModel extends ModelMVC {
//   static int get counter => _counter;
//   static int _counter = 0;
//   static int _incrementCounter() => ++_counter;
//   static int _decrementCounter() => --_counter;
// }
