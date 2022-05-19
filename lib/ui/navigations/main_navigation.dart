import 'package:flutter/material.dart';
import 'package:timetable/ui/screens/screens_factory.dart/widget_factory.dart';

abstract class MainNavigationRouteName {
  static const main = '/';
  static const auht = 'auht';
  static const load = 'load';
}

class MainNavigation {
  final _widgetFactory = ScreensFactory();
  final initialRoute = MainNavigationRouteName.load;
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        MainNavigationRouteName.main: (context) =>
            _widgetFactory.makeTimetableWidget(),
        MainNavigationRouteName.auht: (_) => _widgetFactory.mAuhtWidget(),
        MainNavigationRouteName.load: (_) => _widgetFactory.mLoadWidget(),
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
