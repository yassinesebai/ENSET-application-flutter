import 'package:flutter/material.dart';

class CalculatorModel with ChangeNotifier {
  double _value1 = 0;
  double _value2 = 0;
  double _result = 0;
  List<String> _history = [];

  void setValue1(double value) {
    _value1 = value;
    notifyListeners();
  }

  void setValue2(double value) {
    _value2 = value;
    notifyListeners();
  }

  double get result => _result;

  List<String> get history => _history;

  void _addToHistory(String operation) {
    _history.add('${_value1.toString()} $operation ${_value2.toString()} = ${_result.toString()}');
  }

  void calculateSum() {
    _result = _value1 + _value2;
    _addToHistory('+');
    notifyListeners();
  }

  void calculateDifference() {
    _result = _value1 - _value2;
    _addToHistory('-');
    notifyListeners();
  }

  void calculateProduct() {
    _result = _value1 * _value2;
    _addToHistory('*');
    notifyListeners();
  }

  void calculateQuotient() {
    if (_value2 != 0) {
      _result = _value1 / _value2;
    } else {
      _result = double.nan; // Return NaN if division by zero
    }
    _addToHistory('/');
    notifyListeners();
  }
}
