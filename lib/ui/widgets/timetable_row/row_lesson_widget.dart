import 'package:flutter/material.dart';
import 'package:timetable/themes/theme_main.dart';
import 'package:timetable/ui/widgets/timetable_row/entity/timetable_row_lesson_data.dart';

class TimetableRowLessonWidget extends StatelessWidget {
  final TimetableRowLessonWidgetData data;
  const TimetableRowLessonWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: data.style.widgetColorBk,
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _LessonNameWidget(data: data),
                const SizedBox(height: 8),
                _SpeakerWidget(data: data),
              ],
            ),
          ),
          _LessonClassRoomWidget(data: data)
        ],
      ),
    );
  }
}

class _LessonNameWidget extends StatelessWidget {
  const _LessonNameWidget({Key? key, required this.data}) : super(key: key);
  final TimetableRowLessonWidgetData data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data.lessonName,
      style: ConstantTextStyle.lessonName
          .copyWith(color: data.style.textNameColor),
      maxLines: 3,
    );
  }
}

class _SpeakerWidget extends StatelessWidget {
  const _SpeakerWidget({Key? key, required this.data}) : super(key: key);
  final TimetableRowLessonWidgetData data;
  @override
  Widget build(BuildContext context) {
    const avatarSize = 32.00;
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(avatarSize / 2),
          child: Image.network(
            data.avatarURl,
            fit: BoxFit.cover,
            height: avatarSize,
            width: avatarSize,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            data.speakerName,
            style: ConstantTextStyle.speakerName
                .copyWith(color: data.style.textNameColor),
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}

class _LessonClassRoomWidget extends StatelessWidget {
  const _LessonClassRoomWidget({Key? key, required this.data})
      : super(key: key);
  final TimetableRowLessonWidgetData data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        data.cabinet.toString(),
        style: ConstantTextStyle.lessonRoom
            .copyWith(color: data.style.textNameColor),
      ),
    );
  }
}
