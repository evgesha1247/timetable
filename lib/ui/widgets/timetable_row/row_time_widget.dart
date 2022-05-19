import 'package:flutter/material.dart';
import 'package:timetable/themes/theme_main.dart';
import 'package:timetable/ui/widgets/timetable_row/entity/timetable_row_time_data.dart';

class TimetableRowTimeWidget extends StatelessWidget {
  final TimetableRowTimeWidgetData data;
  const TimetableRowTimeWidget({Key? key, required this.data})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              data.startTime,
              style: ConstantTextStyle.timeText
                  .copyWith(color: data.style.startColor),
            ),
            const Spacer(),
            Text(
              data.endTime,
              style: ConstantTextStyle.timeText
                  .copyWith(color: data.style.endColor),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            Expanded(
              child: _DeviderWidget(
                  color: data.style.startColor,
                  position: _DeviderWidgetPosition.top),
            ),
            Expanded(
              child: _DeviderWidget(
                color: data.style.endColor,
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
    const radius = Radius.circular(2);
    final BorderRadius borderRadius = position == _DeviderWidgetPosition.top
        ? const BorderRadius.vertical(top: radius)
        : const BorderRadius.vertical(bottom: radius);
    return SizedBox(
      width: position == _DeviderWidgetPosition.bottom ? 1 : 1.5,
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
