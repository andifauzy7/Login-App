import 'package:sepakbola/constant/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{

  static Future<void> clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  static Future<void> setUsername(String username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(constant.USERNAME, username);
  }

  static Future<String> getUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(constant.USERNAME);
  }

  void clearSession() async {
    await SharedPref.clear();
  }

}