// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:smartlock/constants/constants.dart';

class ApiService {
  static Future<bool> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('${APIConstants.baseUrl}${APIConstants.loginEndpoint}'),
      body: {
        'email_user': username,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      // La connexion est réussie
      return true;
    }  else {
      // La connexion a échoué
      return false;
     }
  }

  // Autres méthodes d'API à ajouter ici
}
