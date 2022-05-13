import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:timetable/ui/screens/timetable/timetable_model.dart';
import 'package:timetable/ui/screens/timetable/timetable_widget.dart';

class ScreensFactory {
  Widget makeTimetableWidget() => ChangeNotifierProvider(
        create: (context) => TimetableModel(),
        child: const TimetableWidget(),
      );
}
