import 'package:flutter_hive_json/domain/entity/less.dart';
import 'package:flutter_hive_json/domain/entity/timetable.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TimetableData {
  // ApiClient apiClient = ApiClient();
  Future<void> loadData() async {
    // if (!Hive.isAdapterRegistered(0)) {
    //   Hive.registerAdapter(TimetableAdapter());
    // }
    var boxTimetable = await Hive.openBox<Timetable>('Timetable');
    var boxListPost = await Hive.openBox<Less>('ListPosts');
    Hive.deleteBoxFromDisk('Timetable');
    Hive.deleteBoxFromDisk('ListPosts');
  }
}
