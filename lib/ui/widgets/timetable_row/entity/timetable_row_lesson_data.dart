import 'package:flutter/material.dart';
import 'package:timetable/themes/theme_main.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_widget.dart';

class _TimetableRowLessonWidgetDataStyle {
  final Color widgetColorBk;
  final Color textNameColor;
  const _TimetableRowLessonWidgetDataStyle({
    required this.widgetColorBk,
    required this.textNameColor,
  });
}

class TimetableRowLessonWidgetData {
  final String avatarURl;
  final String speakerName;
  final String lessonName;
  final int cabinet;
  final TimetableRowWidgetDataProgressStatus status;
  get style {
    switch (status) {
      case TimetableRowWidgetDataProgressStatus.oncoming:
        return oncomingStyle;
      case TimetableRowWidgetDataProgressStatus.current:
        return currentStyle;
      case TimetableRowWidgetDataProgressStatus.past:
        return pastStyle;
    }
  }

  const TimetableRowLessonWidgetData({
    required this.avatarURl,
    required this.lessonName,
    required this.speakerName,
    required this.status,
    required this.cabinet,
  });

  static const oncomingStyle = _TimetableRowLessonWidgetDataStyle(
    textNameColor: ConstantColors.oncoming,
    widgetColorBk: ConstantColors.container,
  );
  static const currentStyle = _TimetableRowLessonWidgetDataStyle(
    textNameColor: ConstantColors.current,
    widgetColorBk: ConstantColors.container,
  );
  static const pastStyle = _TimetableRowLessonWidgetDataStyle(
    textNameColor: ConstantColors.past,
    widgetColorBk: ConstantColors.container,
  );
}

const lessonData = TimetableRowLessonWidgetData(
  avatarURl:
      'https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745',
  lessonName: 'Технология разработки и защита баз данных',
  speakerName: 'Иванов Иван Иванович',
  status: progresStatus,
  cabinet: 213,
);
