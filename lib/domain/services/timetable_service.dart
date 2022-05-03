import 'package:flutter_hive_json/domain/data/timetable_data.dart';
import 'package:flutter_hive_json/domain/entity/less.dart';
import 'package:flutter_hive_json/domain/entity/timetable.dart';

class TimetableService {
  final _timetableData = TimetableData();
  var _timetable;
  Timetable get timetable => _timetable;
}
