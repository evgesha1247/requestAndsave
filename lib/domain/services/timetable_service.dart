import 'package:flutter_hive_json/domain/data/timetable_data.dart';
import 'package:flutter_hive_json/domain/entity/timetable.dart';

class TimetableService {
  final timetableData = TimetableData();
  Timetable get timetable => timetableData.timetable;
  void initData() {
    timetableData.load();
  }

  TimetableService() {
    initData();
  }
}
