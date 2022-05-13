import 'package:flutter/material.dart';
import 'package:timetable/themes/theme_main.dart';

import 'package:timetable/ui/widgets/timetable_row/timetable_row_widget.dart';

class TimetableRowTimeWidget extends StatelessWidget {
  final TimetableRowTimeWidgetData data;
  const TimetableRowTimeWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            Text(
              data.endTime,
              style: ConstantTextStyle.timeText
                  .copyWith(color: data._style.startColor),
            ),
            const Spacer(),
            Text(
              data.startTime,
              style: ConstantTextStyle.timeText
                  .copyWith(color: data._style.endColor),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            Expanded(
              child: _DeviderWidget(
                  color: data._style.startColor,
                  position: _DeviderWidgetPosition.top),
            ),
            Expanded(
              child: _DeviderWidget(
                color: data._style.endColor,
                position: _DeviderWidgetPosition.bottom,
              ),
            ),
          ],
        )
      ],
    );
  }
}

enum _DeviderWidgetPosition { top, bottom }

class _DeviderWidget extends StatelessWidget {
  const _DeviderWidget({Key? key, required this.color, required this.position})
      : super(key: key);
  final Color color;
  final _DeviderWidgetPosition position;
  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(1);
    final BorderRadius borderRadius = position == _DeviderWidgetPosition.top
        ? const BorderRadius.vertical(top: radius)
        : const BorderRadius.vertical(bottom: radius);
    return SizedBox(
      width: position == _DeviderWidgetPosition.top ? 1 : 1.5,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: Container(),
      ),
    );
  }
}

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
  _TimetableRowTimeWidgetDataProgresStyle get _style {
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
    startColor: ConstantColors.past,
    endColor: ConstantColors.blue,
  );
  static var pastStyle = _TimetableRowTimeWidgetDataProgresStyle(
    startColor: ConstantColors.past,
    endColor: ConstantColors.past,
  );
}
