import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timetable/ui/screens/timetable/timetable_model.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_widget.dart';

class TimetableWidget extends StatelessWidget {
  const TimetableWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final model = context.read<TimetableModel>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () => model.logout(context),
            child: Text('data'),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 3,
              (BuildContext context, int index) {
                if (index == 2) {
                  return TimetableRowStyleWidget.divided(
                    isBreak: true,
                  );
                }

                return TimetableRowStyleWidget.divided(
                  isBreak: false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
