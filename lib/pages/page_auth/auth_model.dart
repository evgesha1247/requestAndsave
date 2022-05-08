import 'package:flutter/cupertino.dart';
import 'package:flutter_hive_json/domain/services/session_services.dart';

enum AuthWidgetModelButtonState { canSubmit, isAuthProcess, disable }

class _AuthWidgetModelState {
  String error = '';
  String name = '';
  bool isAuthInProcess = false;
  AuthWidgetModelButtonState get buttonState {
    if (isAuthInProcess) {
      return AuthWidgetModelButtonState.isAuthProcess;
    } else if (name.isNotEmpty) {
      return AuthWidgetModelButtonState.canSubmit;
    } else {
      return AuthWidgetModelButtonState.disable;
    }
  }

  _AuthWidgetModelState();
}

class AuhtWidgetModel extends ChangeNotifier {
  final SessionServices _sessionServices = SessionServices();
  final _state = _AuthWidgetModelState();
  get state => _state;

  void setNameGroup(String name) {
    if (_state.name == name) return;
    _state.name = name;
    notifyListeners();
  }

  Future<void> buttonOnPressed() async {
    try {
      await _sessionServices.login(_state.name);
      _state.error = '';
      _state.isAuthInProcess = true;
      notifyListeners();
    } on SessionIncorectNameGroupError {
      _state.error = 'не верна указанна группу';
      _state.isAuthInProcess = false;
      notifyListeners();
    } catch (exeption) {
      _state.error = 'случилась ошибка';
      _state.isAuthInProcess = false;
      notifyListeners();
    }
  }
}
