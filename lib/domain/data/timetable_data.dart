import 'package:flutter_hive_json/domain/api/api_client.dart';
import 'package:flutter_hive_json/domain/entity/timetable.dart';

class TimetableData {
  Timetable timetable = Timetable(posts: []);
  Future<void> load() async {
    ApiClient apiClient = ApiClient();
    timetable = Timetable(posts: await apiClient.getPostsFormNetwork());
  }
}
