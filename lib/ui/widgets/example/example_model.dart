import 'package:flutter/material.dart';
import 'package:timetable/domain/api_clients/api_client.dart';
import 'package:timetable/domain/entity/post.dart';

class ExampleWidgetModel extends ChangeNotifier {
  final apiClient = ApiClient();
  var _posts = <Post>[];
  List<Post> get posts => _posts;

  Future<void> reloadPosts() async {
    final posts = await apiClient.getPosts();
    _posts += posts;
    notifyListeners();
  }
}
