//import 'package:shared_preferences/shared_preferences.dart';

// decommenter tous lorsque je suis en mobile

class SessionManager {
  static Future<void> saveSession(String key, String value) async {
    // final prefs = await SharedPreferences.getInstance();
    // await prefs.setString(key, value);
  }

  static Future<String?> getSession(String key) async {
    // final prefs = await SharedPreferences.getInstance();
    // return prefs.getString(key);
    return key;
  }

  static Future<void> clearSession() async {
    // final prefs = await SharedPreferences.getInstance();
    // await prefs.clear();
  }
}
