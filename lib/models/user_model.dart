class UserModel {
  String email;
  String phone;
  String password;
  bool acceptedTerms;

  UserModel({
    required this.email,
    required this.phone,
    required this.password,
    this.acceptedTerms = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'phone': phone,
      'password': password,
      'acceptedTerms': acceptedTerms,
    };
  }
}
