import 'package:timetable/domain/entity/timetable.dart';

class TimetableService {
  Timetable _timetable = Timetable(posts: []);
  get timetable => _timetable;

  Future<void> initValue() async {
    //  будет решаться откуда брать из сети или локального хранилище
    //   1 + 1 == 2 ? await getValueFromNetwork() : await getValueFromStorage();
  }

  // Future<void> getValueFromNetwork() async {
  //   _timetable =
  //       _timetable.copyWith(posts: await _timetableData.loadPostData());
  // }

  // Future<void> getValueFromStorage() async {
  //   _timetable = _timetable.copyWith(posts: await _timetableData.getPostData());
  // }
}
