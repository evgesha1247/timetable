import 'package:flutter/material.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_lesson_widget.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_time_widget.dart';

abstract class TimetableRowWidget extends StatelessWidget {
  const TimetableRowWidget({Key? key}) : super(key: key);
  factory TimetableRowWidget.current({Key? key}) =>
      _TimetableRowCurrentWidget(key: key);
}

class _TimetableRowCurrentWidget extends TimetableRowWidget {
  const _TimetableRowCurrentWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const progresStatus = TimetableRowWidgetDataProgressStatus.current;
    const lessonData = TimetableRowLessonWidgetData(
      avatarURl:
          'https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745',
      lessonName: 'Технология разработки и защита баз данных',
      speakerName: 'Иванов Иван Иванович',
      status: progresStatus,
      cabinet: 213,
    );
    const timeData = TimetableRowTimeWidgetData(
      startTime: '8:30',
      endTime: '9:10',
      progresStatus: progresStatus,
    );

    return IntrinsicHeight(
      child: Row(
        children: const [
          TimetableRowTimeWidget(data: timeData),
          SizedBox(width: 16),
          Expanded(child: TimetableRowLessonWidget(data: lessonData)),
        ],
      ),
    );
  }
}

enum TimetableRowWidgetDataProgressStatus { oncoming, current, past }
