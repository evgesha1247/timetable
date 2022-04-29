import 'package:flutter/material.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_widget.dart';

class TimetableRowTimeWidget extends StatelessWidget {
  final TimetableRowTimeWidgetData data;
  const TimetableRowTimeWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.3,
    );
    return SizedBox(
      width: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(
                data.endTime,
                style: textStyle.copyWith(color: data._style.startColor),
              ),
              const Spacer(),
              Text(data.startTime,
                  style: textStyle.copyWith(color: data._style.endColor)),
            ],
          ),
          const SizedBox(width: 12),
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
      ),
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
      width: 2,
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
        return inProgresStyle;
      case TimetableRowWidgetDataProgressStatus.past:
        return pastStyle;
    }
  }

  static _TimetableRowTimeWidgetDataProgresStyle oncomingStyle =
      _TimetableRowTimeWidgetDataProgresStyle(
    startColor: const Color(0xff787878),
    endColor: const Color(0xff787878),
  );
  static _TimetableRowTimeWidgetDataProgresStyle pastStyle =
      _TimetableRowTimeWidgetDataProgresStyle(
    startColor: const Color(0xffaaaaaa),
    endColor: const Color(0xffaaaaaa),
  );
  static _TimetableRowTimeWidgetDataProgresStyle inProgresStyle =
      _TimetableRowTimeWidgetDataProgresStyle(
    startColor: const Color(0xff787878),
    endColor: Color.fromARGB(255, 81, 171, 245),
  );
}
