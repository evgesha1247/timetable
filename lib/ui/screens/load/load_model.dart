import 'package:flutter/material.dart';
import 'package:timetable/domain/services/session_services.dart';
import 'package:timetable/ui/navigations/main_navigation.dart';

class LoadWidgetModel {
  final SessionServices _sessionServices = SessionServices();
  BuildContext context;
  LoadWidgetModel(this.context) {
    _init();
  }

  Future<void> _init() async {
    final isAuth = await _sessionServices.isAuth();
    isAuth ? _goToAppPage() : _goToAuthPage();
  }

  void _goToAuthPage() {
    Navigator.of(context).pushNamedAndRemoveUntil(
        MainNavigationRouteName.auht, (route) => false);
  }

  void _goToAppPage() {
    Navigator.of(context).pushNamedAndRemoveUntil(
        MainNavigationRouteName.main, (route) => false);
  }
}
