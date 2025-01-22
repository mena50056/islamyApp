import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  static late SharedPreferences _sharedPreferences;

  static init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setString(String key, String value) async {
    return await _sharedPreferences.setString(key, value);
  }

  static Future<bool> setInt(String key, int value) async {
    return await _sharedPreferences.setInt(key, value);
  }

  static Future<bool> setBool(String key, bool value) async {
    return await _sharedPreferences.setBool(key, value);
  }

  static bool? getBool(String key) {
    return _sharedPreferences.getBool(key);
  }

  static int? getInt(String key) {
    return _sharedPreferences.getInt(key);
  }

  static String? getString(String key) {
    return _sharedPreferences.getString(key);
  }
}
