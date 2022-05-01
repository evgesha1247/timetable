import 'package:flutter/material.dart';

class ConstantColors {
  static const Color container = Color.fromARGB(255, 40, 43, 50);
  static const Color scaffold = Color.fromARGB(255, 23, 26, 33);
  static const Color text = Color.fromARGB(255, 230, 233, 240);
  static const Color bottomUnSelectedItem = Color.fromARGB(255, 82, 82, 94);

  static const Color blue = Color.fromARGB(255, 81, 171, 245);
  static const Color current = Color.fromARGB(255, 215, 233, 240);
  static const Color oncoming = Color.fromARGB(255, 160, 163, 170);
  static const Color past = Color.fromARGB(255, 110, 113, 110);
  static const Color shadow = Color.fromARGB(255, 21, 21, 21);
}

class ConstantTextStyle {
  static const appBar = TextStyle(
    fontSize: 13.5,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.5,
    height: 20 / 13.5,
    overflow: TextOverflow.ellipsis,
    color: ConstantColors.text,
  );
  static const elevatedButtonText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );
  static const timeText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
    height: 20 / 12,
    overflow: TextOverflow.ellipsis,
  );
  static const lessonName = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
    height: 20 / 16,
    overflow: TextOverflow.ellipsis,
  );
  static const speakerName = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w200,
    letterSpacing: 0.5,
    overflow: TextOverflow.ellipsis,
  );
  static const lessonRoom = TextStyle(
    fontSize: 13.5,
    fontWeight: FontWeight.w200,
    letterSpacing: 0.5,
    overflow: TextOverflow.ellipsis,
  );
}

class ConstantStyle {
  static ButtonStyle buttonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
  );
}

abstract class ThemeMain {
  static final myThemeDart = ThemeData(
    fontFamily: 'Roboto', // FiraCode , JetBrainsMono , Roboto

    cardColor: ConstantColors.container,
    scaffoldBackgroundColor: ConstantColors.scaffold,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: ConstantColors.container,
      selectedItemColor: ConstantColors.blue,
      selectedIconTheme: IconThemeData(size: 22.2),
      selectedLabelStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.1,
      ),
      unselectedItemColor: ConstantColors.bottomUnSelectedItem,
      unselectedIconTheme: IconThemeData(size: 25),
      showUnselectedLabels: false,
    ),
  );
}
