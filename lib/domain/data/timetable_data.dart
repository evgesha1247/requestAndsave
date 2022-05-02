import 'package:flutter_hive_json/domain/api/api_client.dart';
import 'package:flutter_hive_json/domain/entity/timetable.dart';

class TimetableData {
  ApiClient apiClient = ApiClient();

  Future<Timetable> loadData() async {
    return Timetable(posts: await apiClient.getPostsFormNetwork());
  }

  Future<void> saveData(Timetable timetable) async {
    print("save $timetable");
  }

  Future<void> getData(String key) async {
    print("get $key");
  }
}
