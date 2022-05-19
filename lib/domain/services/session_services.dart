import 'package:timetable/domain/data/session_data.dart';

class SessionIncorectNameGroupError {}

class SessionServices {
  final _sessionData = SessionData();
  Future<bool> isAuth() async {
    final value = await _sessionData.getValue();
    return value != null;
  }

  Future<void> login(String group) async {
    ///   потом будет смотреть группы с расписанием
    ///
    ///

    final isSuccess = group.length > 4;
    if (isSuccess) {
      await _sessionData.saveApiKey(group);
    } else {
      throw SessionIncorectNameGroupError();
    }
  }

  Future<void> logout() async {
    await _sessionData.removeApiKey();
  }

  Future<String?> getGrouName() async => await _sessionData.getValue();
}
