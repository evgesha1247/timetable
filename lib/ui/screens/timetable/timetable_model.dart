import 'package:flutter/cupertino.dart';
import 'package:timetable/domain/entity/post.dart';
import 'package:timetable/domain/services/session_services.dart';
import 'package:timetable/domain/services/timetable_services.dart';
import 'package:timetable/ui/navigations/main_navigation.dart';

class TimetableModelState {
  final List<Post> posts;
  TimetableModelState({required this.posts});
}

class TimetableModel extends ChangeNotifier {
  final SessionServices _sessionServices = SessionServices();
  final TimetableService _timetableService = TimetableService();
  var _staty = TimetableModelState(posts: []);
  TimetableModelState get staty => _staty;

  ExampleWidgetModel() {
    getValue();
  }

  Future<void> logout(BuildContext context) async {
    final navigator = Navigator.of(context);
    await _sessionServices.logout();
    navigator.pushNamedAndRemoveUntil(
        MainNavigationRouteName.load, (route) => false);
  }

  Future<void> getValue() async {
    await _timetableService.initValue();
    _upDateState();
  }

  void _upDateState() {
    final timetable = _timetableService.timetable;
    _staty = TimetableModelState(posts: timetable.posts);
    notifyListeners();
  }
}
