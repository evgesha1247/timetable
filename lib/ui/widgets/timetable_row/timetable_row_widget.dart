import 'package:flutter/material.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_lesson_widget.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_time_widget.dart';

abstract class TimetableRowStyleWidget extends StatelessWidget {
  const TimetableRowStyleWidget({Key? key}) : super(key: key);
  factory TimetableRowStyleWidget.current({Key? key}) =>
      _TimetableRowStyleWidget(key: key);
}

enum TimetableRowWidgetDataProgressStatus { oncoming, current, past }

class _TimetableRowStyleWidget extends TimetableRowStyleWidget {
  const _TimetableRowStyleWidget({Key? key}) : super(key: key);
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
          Expanded(
            child: TimetableRowLessonWidget(data: lessonData),
          ),
        ],
      ),
    );
  }
}
