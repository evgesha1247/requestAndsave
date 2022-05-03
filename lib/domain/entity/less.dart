import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'less.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class Less {
  @HiveField(0)
  final int userId;
  @HiveField(1)
  final int id;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String body;
  Less({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  // factory Less.fromJson(Map<String, dynamic> json) => _$LessFromJson(json);
  // Map<String, dynamic> toJson() => _$PostToJson(this);
}
