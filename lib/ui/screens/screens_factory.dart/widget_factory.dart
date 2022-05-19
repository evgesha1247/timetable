import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:timetable/ui/screens/auth/auth.dart';
import 'package:timetable/ui/screens/auth/auth_model.dart';
import 'package:timetable/ui/screens/load/load.dart';
import 'package:timetable/ui/screens/load/load_model.dart';
import 'package:timetable/ui/screens/timetable/timetable_model.dart';
import 'package:timetable/ui/screens/timetable/timetable_widget.dart';

class ScreensFactory {
  Widget makeTimetableWidget() => ChangeNotifierProvider(
        create: (context) => TimetableModel(),
        child: const TimetableWidget(),
      );
  Widget mAuhtWidget() => ChangeNotifierProvider(
        create: (_) => AuhtWidgetModel(),
        child: const AuhtWidget(),
      );
  Widget mLoadWidget() => Provider(
        create: (context) => LoadWidgetModel(context),
        lazy: false,
        child: const LoadWidget(),
      );
}
