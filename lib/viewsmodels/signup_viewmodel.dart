import 'package:flutter/material.dart';
import '../models/user_model.dart';

class SignupViewModel extends ChangeNotifier {
  UserModel user = UserModel(email: '', phone: '', password: '');
  bool isLoading = false;

  void setEmail(String value) {
    user.email = value;
    notifyListeners();
  }

  void setPhone(String value) {
    user.phone = value;
    notifyListeners();
  }

  void setPassword(String value) {
    user.password = value;
    notifyListeners();
  }

  
  void setConfirmPassword(String value) {
    user.password = value;
    notifyListeners();
  }

  void setAcceptedTerms(bool value) {
    user.acceptedTerms = value;
    notifyListeners();
  }

  Future<void> registerUser() async {
    if (!user.acceptedTerms) {
      debugPrint("Veuillez accepter les conditions d'utilisation.");
      return;
    }

    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2)); // Simulation API

    isLoading = false;
    notifyListeners();
    debugPrint("Inscription réussie: ${user.toJson()}");
  }
}
