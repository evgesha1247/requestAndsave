import 'package:flutter_hive_json/domain/api/api_post.dart';

class TimetableData {
  ApiPost apiPost = ApiPost();

  Future loadPostData() async => await apiPost.getPostsFormNetwork();
  Future getPostData() async => [];
  Future<void> saveData() async {}
}
