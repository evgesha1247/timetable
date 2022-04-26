import 'package:flutter/material.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_lesson_widget.dart';

abstract class TimetableRowWidget extends StatelessWidget {
  const TimetableRowWidget({Key? key}) : super(key: key);

  factory TimetableRowWidget.current({Key? key}) =>
      _TimetableRowCurrentWidget(key: key);
}

class _TimetableRowCurrentWidget extends TimetableRowWidget {
  const _TimetableRowCurrentWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        TimetableRowLessonWidget(),
      ],
    );
  }
}
