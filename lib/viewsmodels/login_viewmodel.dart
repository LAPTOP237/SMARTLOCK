import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  String email = '';
  String password = '';
  bool isLoading = false;

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    password = value;
    notifyListeners();
  }

  Future<void> loginUser() async {
    if (email.isEmpty || password.isEmpty) {
      debugPrint("Veuillez remplir tous les champs.");
      return;
    }

    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2)); // Simulation API

    isLoading = false;
    notifyListeners();
    debugPrint("Connexion réussie : Email: $email");
  }
}
