import 'dart:convert';
import 'dart:io';
import 'package:flutter_hive_json/domain/entity/post.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient {
  final shared = SharedPreferences.getInstance();
  Future<List<Post>> getPostsFormNetwork() async {
    final client = HttpClient();
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final request = await client.getUrl(url);
    final response = await request.close();
    if (response.statusCode == 200) {
      final jsonStrings = await response.transform(utf8.decoder).toList();
      final jsonString = jsonStrings.join();
      final json = jsonDecode(jsonString) as List<dynamic>;
      final posts = json
          .map(
            (json) => Post.fromJson(json as Map<String, dynamic>),
          )
          .toList();

      return posts;
    } else {
      throw Exception('error');
    }
  }
}
