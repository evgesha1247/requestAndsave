import 'package:flutter_hive_json/domain/entity/less.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timetable.g.dart';

//@JsonSerializable()
@HiveType(typeId: 0)
class Timetable extends HiveObject {
  // @HiveField(0)
  // List<Post> posts;
  @HiveField(1)
  HiveList<Less> lessons;
  Timetable(this.lessons);

  //factory Timetable.fromJson(json) => _$TimetableFromJson(json);
  // Map<String, dynamic> toJson() => _$TimetableToJson(this);
}
