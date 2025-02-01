import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  bool _isConnected = false;

  bool get isConnected => _isConnected;

  void login() {
    _isConnected = true;
    notifyListeners();
  }

  void logout() {
    _isConnected = false;
    notifyListeners();
  }
}
