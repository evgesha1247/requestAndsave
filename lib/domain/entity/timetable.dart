import 'package:flutter_hive_json/domain/entity/post.dart';
import 'package:json_annotation/json_annotation.dart';
part 'timetable.g.dart';

@JsonSerializable()
class Timetable {
  final List<Post> posts;
  Timetable({required this.posts});
  Timetable copyWith({List<Post>? posts}) {
    return Timetable(posts: posts ?? this.posts);
  }

  factory Timetable.fromJson(json) => _$TimetableFromJson(json);
  Map<String, dynamic> toJson() => _$TimetableToJson(this);
}
