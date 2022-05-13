import 'package:flutter/material.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_widget.dart';

class TimetableWidget extends StatelessWidget {
  const TimetableWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 2,
              (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
                child: TimetableRowStyleWidget.current(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
