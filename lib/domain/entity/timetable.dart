import 'package:timetable/domain/entity/post.dart';

class Timetable {
  List<Post> posts;
  Timetable({required this.posts});
  Timetable copyWith({List<Post>? posts}) {
    return Timetable(posts: posts ?? this.posts);
  }
}
