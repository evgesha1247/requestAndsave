import 'package:flutter_hive_json/domain/api/api_client.dart';
import 'package:flutter_hive_json/domain/entity/timetable.dart';

class TimetableData {
  Timetable timetable = Timetable(posts: []);
  Future<Timetable> load() async {
    ApiClient apiClient = ApiClient();
    return Timetable(posts: await apiClient.getPostsFormNetwork());
  }
}
