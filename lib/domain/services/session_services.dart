import 'package:flutter_hive_json/domain/data/session_data.dart';

class SessionServices {
  final _sessionData = SessionData();
  Future<bool> isAuth() async {
    final value = await _sessionData.getValue();
    return value != null;
  }

  Future<void> login(String group) async {
    await _sessionData.saveApiKey(group);
  }

  Future<void> logout() async {
    await _sessionData.removeApiKey();
  }

  Future<String?> getGrouName() async => await _sessionData.getValue();
}
