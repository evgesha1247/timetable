import 'package:flutter/material.dart';

abstract class ThemeMain {
  static final myThemeLight = ThemeData(
    fontFamily: 'FiraCode',
    textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Color.fromARGB(245, 30, 33, 40))),
    scaffoldBackgroundColor: const Color.fromARGB(245, 230, 233, 240),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromARGB(245, 230, 233, 240),
      selectedItemColor: Color.fromARGB(255, 34, 129, 206),
      unselectedItemColor: Color(0xff52525e),
      selectedIconTheme: IconThemeData(size: 25),
      //selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedIconTheme: IconThemeData(size: 25),
      unselectedLabelStyle: TextStyle(fontSize: 12),
      showUnselectedLabels: false,
    ),
  );
  static final myThemeDart = ThemeData(
    fontFamily: 'FiraCode', // FiraCode , JetBrainsMono
    textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Color.fromARGB(245, 230, 233, 240))),
    scaffoldBackgroundColor: const Color.fromARGB(245, 30, 33, 40),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromARGB(245, 30, 33, 40),
      selectedItemColor: Color.fromARGB(255, 24, 119, 196),
      unselectedItemColor: Color(0xff52525e),
      selectedIconTheme: IconThemeData(size: 25),
      //selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedIconTheme: IconThemeData(size: 25),
      unselectedLabelStyle: TextStyle(fontSize: 12),
      showUnselectedLabels: false,
    ),
  );
}
