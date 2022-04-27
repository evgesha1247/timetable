import 'package:flutter/material.dart';

class TimetableRowLessonWidget extends StatelessWidget {
  const TimetableRowLessonWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
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
              children: const [
                _LessonNameWidget(),
                SizedBox(height: 8),
                _SpeakerWidget(),
              ],
            ),
          ),
          const _LessonClassRoomWidget(),
        ],
      ),
    );
  }
}

class _SpeakerWidget extends StatelessWidget {
  const _SpeakerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const avatarSize = 32.00;
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(avatarSize / 2),
          child: Image.network(
            'https://atidstu.ru/sites/default/files/bobarenko.jpg',
            fit: BoxFit.cover,
            height: avatarSize,
            width: avatarSize,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            'Бобаренко  Денис Викторович',
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
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
  const _LessonNameWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Tехнология разработки и защиты баз данных',
      style: TextStyle(
        fontSize: 18,
        height: 1.2,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _LessonClassRoomWidget extends StatelessWidget {
  const _LessonClassRoomWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15),
      child: Text('213'),
    );
  }
}
