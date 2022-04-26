import 'package:flutter/material.dart';
import 'package:timetable/ui/screens/screens_factory.dart/widget_factory.dart';

abstract class MainNavigationRouteName {
  static const main = '/';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteName.main;
  final _widgetFactory = ScreensFactory();
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        MainNavigationRouteName.main: (context) =>
            _widgetFactory.makeTimetableWidget(),
      };
  Route<Object>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('ошибка навигации !'),
            ),
          ),
        );
    }
    return null;
  }
}
