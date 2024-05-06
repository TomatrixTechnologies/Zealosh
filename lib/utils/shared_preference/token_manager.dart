import 'package:shared_preferences/shared_preferences.dart';

class TokenManager {
  // static const String _accessTokenKey = 'access_token';
  // static const String _refreshTokenKey = 'refresh_token';
  // late SharedPreferences _prefs;
  static late SharedPreferences _prefs;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }

  // static Future<String> getAccessToken() async {
  //   return _prefs.getString(_accessTokenKey) ?? '';
  // }

  static String getString(String key) => _prefs.getString(key) ?? "";

  static Future<void> setString(String key, String value) async =>
      await _prefs.setString(key, value);

 static Future<void> removeString(String key,) async => await _prefs.remove(key);

  // static Future<String> getRefreshToken() async {
  //   return _prefs.getString(_refreshTokenKey) ?? '';
  // }

  // static Future<void> setTokens(String accessToken, String refreshToken) async {
  //   await _prefs.setString(_accessTokenKey, accessToken);
  //   await _prefs.setString(_refreshTokenKey, refreshToken);
  // }

  // static Future<void> removeTokens() async {
  //   await _prefs.remove(_accessTokenKey);
  //   await _prefs.remove(_refreshTokenKey);
  // }
}
