import 'package:flutter_hive_json/domain/data/timetable_data.dart';
import 'package:flutter_hive_json/domain/entity/timetable.dart';

class TimetableService {
  final _timetableData = TimetableData();
  var _timetable = Timetable(posts: []);
  Timetable get timetable => _timetable;

  Future<void> loadValue() async {
    _timetable = await _timetableData.loadData();
    _timetableData.saveData(_timetable);
  }

  Future<void> getValue() async {
    await _timetableData.getData('key');
  }
}
