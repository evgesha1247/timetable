import 'package:flutter/material.dart';
import 'package:timetable/domain/services/session_services.dart';
import 'package:timetable/ui/navigations/main_navigation.dart';

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
    _state.error = '';
    _state.name = name;
    notifyListeners();
  }

  Future<void> buttonOnPressed(BuildContext context) async {
    try {
      final navigator = Navigator.of(context);
      await _sessionServices.login(_state.name);
      _state.error = '';
      _state.isAuthInProcess = true;
      navigator.pushNamedAndRemoveUntil(
          MainNavigationRouteName.load, (route) => false);
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
