import 'package:mvc_pattern/mvc_pattern.dart';

class SampleAppController extends ControllerMVC {
  /// Singleton Factory
  factory SampleAppController() {
    if (_this == null) _this = SampleAppController._();
    return _this;
  }
  static SampleAppController _this;

  SampleAppController._();

  /// Allow for easy access to 'the Controller' throughout the application.
  static SampleAppController get con => _this;

  int get counter => _counter;
  int _counter = 0;
  void incrementCounter() => _counter++;
  void decrementCounter() => _counter--;
}
