import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static late SharedPreferencesManager _instance;
  static late SharedPreferences _sharedPreferences;
  static const String keyIsLogin = 'isLogin';
  static const String userId = 'userID';
  static const String keyUsername = 'username';
  static const String keyPhoneNumber = 'phonenumber';
  static const String firstTime = "firstTime";
  static const String ongoingBooking = "ongoingBooking";

  static Future<SharedPreferencesManager> getInstance() async {
    _instance = SharedPreferencesManager();

    _sharedPreferences = await SharedPreferences.getInstance();

    return _instance;
  }

  Future<bool> setfirstTime() {
    return _sharedPreferences.setBool(firstTime, false);
  }

  Future<bool?> isfirstTime() async {
    return _sharedPreferences.getBool(firstTime);
  }

  Future<bool> putBool(String key, bool value) =>
      _sharedPreferences.setBool(key, value);

  Future<bool> setBool(String key, bool value) =>
      _sharedPreferences.setBool(key, value);

  bool? getBool(String key) => _sharedPreferences.getBool(key);

  Future<bool> putDouble(String key, double value) =>
      _sharedPreferences.setDouble(key, value);

  double getDouble(String key) => _sharedPreferences.getDouble(key)!;

  Future<bool> setString(String key, String value) =>
      _sharedPreferences.setString(key, value);

  Future<bool> putInt(String key, int value) =>
      _sharedPreferences.setInt(key, value);

  int getInt(String key) => _sharedPreferences.getInt(key)!;

  Future<bool> putString(String key, String? value) =>
      _sharedPreferences.setString(key, value!);

  String? getString(String key) => _sharedPreferences.getString(key);

  Future<bool> putStringList(String key, List<String> value) =>
      _sharedPreferences.setStringList(key, value);

  List<String> getStringList(String key) =>
      _sharedPreferences.getStringList(key)!;

  bool isKeyExists(String key) => _sharedPreferences.containsKey(key);

  Future<bool> clearKey(String key) => _sharedPreferences.remove(key);

  Future<bool> clearAll() => _sharedPreferences.clear();
}
