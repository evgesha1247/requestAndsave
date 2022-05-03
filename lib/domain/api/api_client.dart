import 'dart:convert';
import 'dart:io';
import 'package:flutter_hive_json/domain/entity/less.dart';

// class ApiClient {
//   Future<List<Less>> getPostsFormNetwork() async {
//     final client = HttpClient();
//     final url = Uri.parse(
//         'https://jsonplaceholder.typicode.com/posts'); //https://jsonplaceholder.typicode.com/comments?postId=1
//     final request = await client.getUrl(url);
//     final response = await request.close();
//     if (response.statusCode == 200) {
//       final jsonStrings = await response.transform(utf8.decoder).toList();
//       final jsonString = jsonStrings.join();
//       final json = jsonDecode(jsonString) as List<dynamic>;
//       final lessons = json
//           .map(
//             (json) => Less.fromJson(json as Map<String, dynamic>),
//           )
//           .toList();
//       return lessons;
//     } else {
//       throw Exception('error  ${response.statusCode}');
//     }
//   }
// }
