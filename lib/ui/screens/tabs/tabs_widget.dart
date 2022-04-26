import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timetable/ui/screens/tabs/tabs_model.dart';
import 'package:timetable/ui/screens/timetable/timetable_widget.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _TabsBodyWidget(),
      bottomNavigationBar: _BottomNavigationBarWidget(),
    );
  }
}

class _TabsBodyWidget extends StatelessWidget {
  const _TabsBodyWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final currentIndexTab = context.select((TabsModel e) => e.currentIndexTab);
    return IndexedStack(
      index: currentIndexTab,
      children: const [
        TimetableWidget(),
        Text('2'),
        Text('4'),
      ],
    );
  }
}

class _BottomNavigationBarWidget extends StatelessWidget {
  const _BottomNavigationBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final currentIndexTab = context.select((TabsModel e) => e.currentIndexTab);
    final model = context.read<TabsModel>();
    return BottomNavigationBar(
      currentIndex: currentIndexTab,
      onTap: model.setCurrentIndexTab,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label: 'timetable',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'less',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          label: 'map',
          tooltip: '',
        ),
      ],
    );
  }
}
