import 'package:flutter/material.dart';

class TimetableRowLessonWidget extends StatelessWidget {
  const TimetableRowLessonWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(16),

      decoration: const BoxDecoration(
        color: Color.fromARGB(245, 40, 43, 50),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  _SpeakerAvatarWidget(),
                  SizedBox(width: 8),
                  _SpeakerNameWidget(),
                ],
              ),
              const _LessonNameWidget(),
            ],
          ),
          const _LessonClassRoomWidget(),
        ],
      ),
    );
  }
}

class _SpeakerNameWidget extends StatelessWidget {
  const _SpeakerNameWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Бобаренко  Денис Викторович',
      style: TextStyle(
        fontSize: 14,
        height: 1.4285714286,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _SpeakerAvatarWidget extends StatelessWidget {
  const _SpeakerAvatarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const avatarSize = 24.00;
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
      ],
    );
  }
}

class _LessonNameWidget extends StatelessWidget {
  const _LessonNameWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Text('Tехнология разработки и защиты баз данных');
  }
}

class _LessonClassRoomWidget extends StatelessWidget {
  const _LessonClassRoomWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Text('213');
  }
}
