import 'package:flutter/foundation.dart';

//customer data object for storing data related to user
class CustomerInfo with ChangeNotifier {
  String _name;
  String _profession;

  String get profession => _profession;

  set profession(String value) {
    _profession = value;
    notifyListeners();
  }

  String _location;
  List<String> _specialities;

  List<String> get specialities => _specialities;

  set specialities(List<String> value) {
    _specialities = value;
    notifyListeners();
  }

  set name(String value) {
    _name = value;
    notifyListeners();
  }

  String get name => _name;

  String get location => _location;

  set location(String value) {
    _location = value;
    notifyListeners();
  }
}
