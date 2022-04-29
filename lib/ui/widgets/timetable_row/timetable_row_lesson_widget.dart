import 'package:flutter/material.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_widget.dart';

class TimetableRowLessonWidget extends StatelessWidget {
  const TimetableRowLessonWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final TimetableRowLessonWidgetData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: data._style.widgetColorBk,
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 21, 21, 21).withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(.5, 2), // changes position of shadow
          ),
        ],
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
          _LessonClassRoomWidget(data: data),
        ],
      ),
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
            style: TextStyle(
              color: data._style.speakerNameColor,
              fontSize: 14,
              fontWeight: FontWeight.w200,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
          ),
        ),
      ],
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
      style: TextStyle(
        color: data._style.lessonNameColor,
        fontSize: 18,
        height: 1.2,
        fontWeight: FontWeight.w500,
      ),
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
        '213',
        style: TextStyle(
          color: data._style.lessonNameColor,
        ),
      ),
    );
  }
}

class _TimetableRowLessonWidgetDataStyle {
  final Color widgetColorBk;
  final Color speakerNameColor;
  final Color lessonNameColor;
  const _TimetableRowLessonWidgetDataStyle({
    required this.widgetColorBk,
    required this.speakerNameColor,
    required this.lessonNameColor,
  });
}

class TimetableRowLessonWidgetData {
  final String avatarURl;
  final String speakerName;
  final String lessonName;
  final TimetableRowWidgetDataProgressStatus status;
  _TimetableRowLessonWidgetDataStyle get _style {
    switch (status) {
      case TimetableRowWidgetDataProgressStatus.oncoming:
        return oncomingStyle;
      case TimetableRowWidgetDataProgressStatus.current:
        return oncomingStyle;
      case TimetableRowWidgetDataProgressStatus.past:
        return pastStyle;
    }
  }

  const TimetableRowLessonWidgetData({
    required this.avatarURl,
    required this.lessonName,
    required this.speakerName,
    required this.status,
  });

  static const oncomingStyle = _TimetableRowLessonWidgetDataStyle(
    lessonNameColor: Color.fromARGB(255, 230, 233, 240),
    speakerNameColor: Color.fromARGB(255, 160, 163, 170),
    widgetColorBk: Color.fromARGB(255, 40, 43, 50),
  );

  static const pastStyle = _TimetableRowLessonWidgetDataStyle(
    lessonNameColor: Color.fromARGB(150, 230, 233, 240),
    speakerNameColor: Color.fromARGB(150, 160, 163, 170),
    widgetColorBk: Color.fromARGB(150, 40, 43, 50),
  );
}
