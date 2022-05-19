import 'package:flutter/material.dart';

class BreakBetweenLessonsWidget extends StatelessWidget {
  const BreakBetweenLessonsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: _BreakBetweenLessons()),
        SizedBox(width: 15),
        Text(
          'П Е Р Е Р Ы В',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w200,
          ),
        ),
        SizedBox(width: 15),
        Expanded(child: _BreakBetweenLessons()),
      ],
    );
  }
}

class _BreakBetweenLessons extends StatelessWidget {
  const _BreakBetweenLessons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 7.0),
      painter: _BreakBetweenLessonsPainter(),
    );
  }
}

class _BreakBetweenLessonsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var spaceWidth = size.height;
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    final itemCount = (size.width / spaceWidth).floor();
    for (var i = 0; i < itemCount; i++) {
      final xOffset = spaceWidth * i;
      final start = Offset(xOffset + 4, 0);
      final end = Offset(xOffset, size.height);
      canvas.drawLine(start, end, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
