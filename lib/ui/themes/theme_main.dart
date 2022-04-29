import 'package:flutter/material.dart';

class ConstantColors {
  static const Color containerLight = Color.fromARGB(255, 240, 243, 250);
  static const Color textLight = Color.fromARGB(255, 30, 33, 40);
  static const Color scaffoldLight = Color.fromARGB(255, 223, 226, 233);
  static const Color bottomLight = Color.fromARGB(255, 240, 243, 250);
  //-----------------------------------------------------------------
  static const Color containerDart = Color.fromARGB(255, 40, 43, 50);
  static const Color textDart = Color.fromARGB(255, 230, 233, 240);
  static const Color scaffoldDart = Color.fromARGB(255, 23, 26, 33);
  static const Color bottomDart = Color.fromARGB(255, 40, 43, 50);
  //-----------------------------------------------------------------
  static const Color bottomSelectedItem = Color(0xff2281ce);
  static const Color bottomUnSelectedItem = Color(0xff52525e);
}

abstract class ThemeMain {
  static final myThemeLight = ThemeData(
    fontFamily: 'FiraCode',
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: ConstantColors.textLight,
        fontWeight: FontWeight.w100,
      ),
    ),
    cardColor: ConstantColors.containerLight,
    scaffoldBackgroundColor: ConstantColors.scaffoldLight,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: ConstantColors.bottomLight,
      selectedItemColor: ConstantColors.bottomSelectedItem,
      unselectedItemColor: ConstantColors.bottomUnSelectedItem,
      selectedIconTheme: IconThemeData(size: 25),
      unselectedIconTheme: IconThemeData(size: 25),
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
      showUnselectedLabels: false,
    ),
  );

  static final myThemeDart = ThemeData(
    fontFamily: 'Roboto', // FiraCode , JetBrainsMono
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: ConstantColors.textDart,
        fontWeight: FontWeight.w300,
      ),
    ),
    cardColor: ConstantColors.containerDart,
    scaffoldBackgroundColor: ConstantColors.scaffoldDart,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: ConstantColors.bottomDart,
      selectedItemColor: ConstantColors.bottomSelectedItem,
      unselectedItemColor: ConstantColors.bottomUnSelectedItem,
      selectedIconTheme: IconThemeData(size: 25),
      //selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedIconTheme: IconThemeData(size: 25),
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),

      showUnselectedLabels: false,
    ),
  );
}
