import 'package:flutter_hive_json/domain/api/api_client.dart';
import 'package:flutter_hive_json/domain/entity/post.dart';
import 'package:http/http.dart';

class TimetableData {
  ApiClient apiClient = ApiClient();

  Future loadData() async => await apiClient.getPostsFormNetwork();
  Future getData() async =>
      [Post(userId: 1, id: 1, title: 'title', body: 'body')];
  Future<void> saveData() async {}
}
