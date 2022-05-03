import 'package:flutter_hive_json/domain/entity/post.dart';
import 'package:hive/hive.dart';

class Timetable {
  @HiveField(0)
  List<Post> posts;
  Timetable({required this.posts});
  Timetable copyWith({List<Post>? posts}) {
    return Timetable(posts: posts ?? this.posts);
  }
}
