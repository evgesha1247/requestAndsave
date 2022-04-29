import 'package:flutter/cupertino.dart';
import 'package:flutter_hive_json/domain/api/api_client.dart';
import 'package:flutter_hive_json/domain/entity/post.dart';

class ExampleWidgetModel extends ChangeNotifier {
  var _posts = const <Post>[];
  final apiClient = ApiClient();
  List<Post> get post => _posts;
  Future<void> reload() async {
    print(_posts.isEmpty);
    if (_posts.isEmpty) {
      _posts += await apiClient.getPosts();
      notifyListeners();
    }
  }
}
