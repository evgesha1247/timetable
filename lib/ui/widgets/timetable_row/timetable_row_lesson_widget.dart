import 'package:flutter/material.dart';
import 'package:timetable/themes/theme_main.dart';
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
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        boxShadow: const [
          BoxShadow(
            color: ConstantColors.shadow,
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(1, 2),
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

class _LessonNameWidget extends StatelessWidget {
  const _LessonNameWidget({Key? key, required this.data}) : super(key: key);
  final TimetableRowLessonWidgetData data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data.lessonName,
      style: ConstantTextStyle.lessonName
          .copyWith(color: data._style.textNameColor),
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
                .copyWith(color: data._style.textNameColor),
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
            .copyWith(color: data._style.textNameColor),
      ),
    );
  }
}

class _TimetableRowLessonWidgetDataStyle {
  final Color widgetColorBk;
  final Color textNameColor;

  const _TimetableRowLessonWidgetDataStyle({
    required this.widgetColorBk,
    required this.textNameColor,
  });
}

class TimetableRowLessonWidgetData {
  final String avatarURl;
  final String speakerName;
  final String lessonName;
  final int cabinet;
  final TimetableRowWidgetDataProgressStatus status;
  _TimetableRowLessonWidgetDataStyle get _style {
    switch (status) {
      case TimetableRowWidgetDataProgressStatus.oncoming:
        return oncomingStyle;
      case TimetableRowWidgetDataProgressStatus.current:
        return currentStyle;
      case TimetableRowWidgetDataProgressStatus.past:
        return pastStyle;
    }
  }

  const TimetableRowLessonWidgetData({
    required this.avatarURl,
    required this.lessonName,
    required this.speakerName,
    required this.status,
    required this.cabinet,
  });

  static const oncomingStyle = _TimetableRowLessonWidgetDataStyle(
    textNameColor: ConstantColors.oncoming,
    widgetColorBk: ConstantColors.container,
  );
  static const currentStyle = _TimetableRowLessonWidgetDataStyle(
    textNameColor: ConstantColors.current,
    widgetColorBk: ConstantColors.container,
  );
  static const pastStyle = _TimetableRowLessonWidgetDataStyle(
    textNameColor: ConstantColors.past,
    widgetColorBk: ConstantColors.container,
  );
}
