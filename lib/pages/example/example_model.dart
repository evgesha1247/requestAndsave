import 'package:flutter/cupertino.dart';
import 'package:flutter_hive_json/domain/api/api_client.dart';
import 'package:flutter_hive_json/domain/entity/post.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ExampleWidgetModel extends ChangeNotifier {
  ApiClient apiClient = ApiClient();
  late final Future<Box<Post>> _box;
  List<Post> _posts = [];
  var isEditor = true;
  List<Post> get post => _posts;

  Future<void> getBoxPosts() async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(PostAdapter());
    }
    var box = await Hive.openBox<List<Post>>('box_posts');
    if (_posts == []) {
      reload();
      box.put('posts', await apiClient.getPosts());
    } else {
      box.put('posts', await apiClient.getPosts());
      print(_posts);
    }

    box.close();
    notifyListeners();
  }

  Future<void> reload() async {
    _posts = await apiClient.getPosts();
    notifyListeners();
  }
}
