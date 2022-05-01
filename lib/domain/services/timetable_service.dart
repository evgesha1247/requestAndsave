import 'package:flutter_hive_json/domain/data/timetable_data.dart';
import 'package:flutter_hive_json/domain/entity/timetable.dart';

class TimetableService {
  final _timetableData = TimetableData();
  var _timetable = Timetable(posts: []);
  Timetable get timetable => _timetableData.timetable;
  Future<void> initData() async {
    _timetable = await _timetableData.load();
    // _timetable.toJson(); // <== нихуясе
  }

  TimetableService() {
    initData();
  }
}
