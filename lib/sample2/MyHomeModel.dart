import 'package:mvc_pattern/mvc_pattern.dart';

class MyHomeModel /*extends ModelMVC*/ {
  static int get counter => _counter;
  static int _counter = 0;
  static int incrementCounter() => ++_counter;
  static int decrementCounter() => --_counter;
}
