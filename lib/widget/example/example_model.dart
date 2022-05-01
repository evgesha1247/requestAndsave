import 'package:flutter/cupertino.dart';
import 'package:flutter_hive_json/domain/entity/post.dart';
import 'package:flutter_hive_json/domain/services/timetable_service.dart';

class ExampleWidgetModelstaty {
  final List<Post> posts;
  ExampleWidgetModelstaty({required this.posts});
}

class ExampleWidgetModel extends ChangeNotifier {
  var _staty = ExampleWidgetModelstaty(posts: []);
  final _timetableService = TimetableService();
  ExampleWidgetModelstaty get getStaty => _staty;
  void loadValue() {
    _timetableService.initData();
    _upDateState();
  }

  void _upDateState() {
    final timetable = _timetableService.timetable;
    _staty = ExampleWidgetModelstaty(posts: timetable.posts);
    notifyListeners();
  }
}
