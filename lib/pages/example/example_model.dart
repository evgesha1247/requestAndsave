import 'package:flutter/cupertino.dart';
import 'package:flutter_hive_json/domain/api/api_client.dart';
import 'package:flutter_hive_json/domain/entity/post.dart';
import 'package:hive/hive.dart';

class ExampleWidgetModel extends ChangeNotifier {
  ApiClient apiClient = ApiClient();
  List<Post> _posts = [];
  List<Post> get post => _posts;

  Future<void> getBoxPosts() async {}

  Future<void> reload() async {
    _posts = await apiClient.getPosts();
    notifyListeners();
  }
}
