import 'dart:convert';
import 'dart:io';
import 'package:flutter_hive_json/domain/entity/post.dart';

class ApiClient {
  final client = HttpClient();
  Future<List<Post>> getPosts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final json = jsonDecode(jsonString) as List<dynamic>;
    final posts = json
        .map(
          (e) => Post.fromJson(e as Map<String, dynamic>),
        )
        .toList();
    return posts;
  }
}
