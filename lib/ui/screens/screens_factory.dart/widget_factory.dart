import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:timetable/ui/screens/tabs/tabs_model.dart';
import 'package:timetable/ui/screens/tabs/tabs_widget.dart';

class ScreensFactory {
  Widget makeTimetableWidget() => ChangeNotifierProvider(
        create: (context) => TabsModel(),
        child: const TabsWidget(),
      );
}
