import 'package:flutter/material.dart';

class InCounter extends ChangeNotifier {
  int _number = 0;

  int get number => _number;

  void incmement() {
    _number++;

    notifyListeners();
  }

  void decremement() {
    if (_number == 0) return null;
    _number--;
    notifyListeners();
  }

  void clean() {
    _number = 0;
    notifyListeners();
  }
}
