import 'package:flutter/material.dart';

abstract class ThemeMain {
  static final myThemeLight = ThemeData(
    fontFamily: 'FiraCode',
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Color.fromARGB(255, 30, 33, 40),
      ),
    ),
    cardColor: const Color.fromARGB(255, 240, 243, 250),
    scaffoldBackgroundColor: const Color.fromARGB(255, 223, 226, 233),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 240, 243, 250),
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
    fontFamily: 'Roboto', // FiraCode , JetBrainsMono
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Color.fromARGB(255, 230, 233, 240),
        fontWeight: FontWeight.w100,
      ),
    ),
    cardColor: const Color.fromARGB(255, 40, 43, 50),
    scaffoldBackgroundColor: const Color.fromARGB(255, 23, 26, 33),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromARGB(255, 40, 43, 50),
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
