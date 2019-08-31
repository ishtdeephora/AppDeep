import 'package:flutter/foundation.dart';

class DataProvider with ChangeNotifier {
  String _heading = "Hello";
  int _stringLength = 25;

  set heading(String value) {
    _heading = value;
    notifyListeners();
  }

  String get heading => _heading;

  int get stringLength => _stringLength;

  set stringLength(int value) {
    _stringLength = value;
    notifyListeners();
  }
}
