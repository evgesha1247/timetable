import 'package:flutter/material.dart';
import 'package:timetable/ui/navigations/main_navigation.dart';
import 'package:timetable/ui/themes/theme_main.dart';

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mainNavigation = MainNavigation();
    return MaterialApp(
      theme: ThemeMain.myThemeDart,
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute,
      onGenerateRoute: mainNavigation.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
