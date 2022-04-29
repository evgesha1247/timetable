import 'package:flutter/material.dart';
import 'package:timetable/ui/widgets/timetable_row/timetable_row_widget.dart';

class TimetableWidget extends StatelessWidget {
  const TimetableWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const _SliverdelegateAppBarWidget(),
        SliverPersistentHeader(
          pinned: true,
          delegate: _SliverdelegateAppBarButtonWidget(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 4,
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
                child: TimetableRowWidget.current(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _SliverdelegateAppBarWidget extends StatelessWidget {
  const _SliverdelegateAppBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
              child: SizedBox(
                child: Text(
                  '«Донской государственный технический университет» Технологический институт (филиал) в г.Азове',
                  softWrap: true,
                  maxLines: 4,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Image.asset(
              'assets/images/atidstu_logo.gif',
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverdelegateAppBarButtonWidget extends SliverPersistentHeaderDelegate {
  final double _height = 56;
  @override
  double get minExtent => _height;
  @override
  double get maxExtent => _height;
  @override
  Widget build(
          BuildContext context, double shrinkOffset, bool overlapsContent) =>
      const _SectionButtonWidget();
  @override
  bool shouldRebuild(_SliverdelegateAppBarButtonWidget oldDelegate) {
    return _height != oldDelegate._height;
  }
}

class _SectionButtonWidget extends StatelessWidget {
  const _SectionButtonWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List dayWeeks = [
      ' понедельник ',
      ' вторник ',
      ' среда ',
      ' четверг ',
      ' пятница ',
      ' суббота ',
      ' воскресенье ',
    ];
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20.00),
        scrollDirection: Axis.horizontal,
        itemCount: dayWeeks.length,
        itemBuilder: (BuildContext context, int index) => Center(
          child: Center(
            child: SizedBox(
              height: 36,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  minimumSize: MaterialStateProperty.all(Size.zero),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(dayWeeks[index]),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
      ),
    );
  }
}
