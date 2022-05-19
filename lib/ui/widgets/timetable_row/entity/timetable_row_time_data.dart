import 'package:flutter/material.dart';
import 'package:timetable/themes/theme_main.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_widget.dart';

class _TimetableRowTimeWidgetDataProgresStyle {
  final Color startColor;
  final Color endColor;
  _TimetableRowTimeWidgetDataProgresStyle({
    required this.startColor,
    required this.endColor,
  });
}

class TimetableRowTimeWidgetData {
  final String startTime;
  final String endTime;
  final TimetableRowWidgetDataProgressStatus progresStatus;
  const TimetableRowTimeWidgetData({
    required this.startTime,
    required this.endTime,
    required this.progresStatus,
  });
  get style {
    switch (progresStatus) {
      case TimetableRowWidgetDataProgressStatus.oncoming:
        return oncomingStyle;
      case TimetableRowWidgetDataProgressStatus.current:
        return currentStyle;
      case TimetableRowWidgetDataProgressStatus.past:
        return pastStyle;
    }
  }

  static var oncomingStyle = _TimetableRowTimeWidgetDataProgresStyle(
    startColor: ConstantColors.oncoming,
    endColor: ConstantColors.oncoming,
  );
  static var currentStyle = _TimetableRowTimeWidgetDataProgresStyle(
    startColor: ConstantColors.blue,
    endColor: ConstantColors.past,
  );
  static var pastStyle = _TimetableRowTimeWidgetDataProgresStyle(
    startColor: ConstantColors.past,
    endColor: ConstantColors.past,
  );
}

const timeData = TimetableRowTimeWidgetData(
  startTime: '8:30',
  endTime: '9:10',
  progresStatus: progresStatus,
);
