import 'package:shared_preferences/shared_preferences.dart';

abstract class SessionUserKeyData {
  static const _apiKey = 'api_key';
}

class SessionData {
  final _shared = SharedPreferences.getInstance();

  Future<void> saveApiKey(String key) async {
    (await _shared).setString(SessionUserKeyData._apiKey, key);
  }

  Future<void> removeApiKey() async {
    (await _shared).remove(SessionUserKeyData._apiKey);
  }

  Future<String?> getValue() async =>
      (await _shared).getString(SessionUserKeyData._apiKey);
}
