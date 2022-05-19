import 'package:flutter/material.dart';
import 'package:timetable/ui/widgets/timetable_row/entity/timetable_row_lesson_data.dart';
import 'package:timetable/ui/widgets/timetable_row/entity/timetable_row_time_data.dart';
import 'package:timetable/ui/widgets/timetable_row/row_break_between_lessons.dart';
import 'package:timetable/ui/widgets/timetable_row/row_lesson_widget.dart';
import 'package:timetable/ui/widgets/timetable_row/row_time_widget.dart';

enum TimetableRowWidgetDataProgressStatus { oncoming, current, past }

const progresStatus = TimetableRowWidgetDataProgressStatus.current;

abstract class TimetableRowStyleWidget extends StatelessWidget {
  const TimetableRowStyleWidget({Key? key, required this.isBreak})
      : super(key: key);
  final bool isBreak;
  factory TimetableRowStyleWidget.divided({Key? key, required bool isBreak}) =>
      _TimetableRowWidgetDivided(key: key, isBreak: isBreak);
  factory TimetableRowStyleWidget.mutual({Key? key, required bool isBreak}) =>
      _TimetableRowWidgetMutual(key: key, isBreak: isBreak);
}

class _TimetableRowWidgetDivided extends TimetableRowStyleWidget {
  const _TimetableRowWidgetDivided({Key? key, required this.isBreak})
      : super(key: key, isBreak: isBreak);
  final bool isBreak;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (isBreak)
            ? const Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: BreakBetweenLessonsWidget(),
              )
            : const SizedBox(),
        IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
            child: Row(
              children: const [
                TimetableRowTimeWidget(data: timeData),
                SizedBox(width: 16),
                Expanded(child: TimetableRowLessonWidget(data: lessonData)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _TimetableRowWidgetMutual extends TimetableRowStyleWidget {
  const _TimetableRowWidgetMutual({Key? key, required this.isBreak})
      : super(key: key, isBreak: isBreak);
  final bool isBreak;
  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
