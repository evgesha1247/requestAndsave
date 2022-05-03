import 'package:flutter_hive_json/domain/data/timetable_data.dart';
import 'package:flutter_hive_json/domain/entity/timetable.dart';

class TimetableService {
  final _timetableData = TimetableData();
  Timetable _timetable = Timetable(posts: []);
  get timetable => _timetable;
  Future<void> initValue() async {
    //  будет решаться откуда брать
    //  из сети или локального
    //  хранилище
    1 + 1 == 2 ? await getValueFromNetwork() : await getValueFromStorage();
  }

  Future<void> getValueFromNetwork() async {
    _timetable = _timetable.copyWith(posts: await _timetableData.loadData());
  }

  Future<void> getValueFromStorage() async {
    _timetable = _timetable.copyWith(posts: await _timetableData.getData());
  }
}
