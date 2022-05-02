import 'package:flutter/cupertino.dart';
import 'package:flutter_hive_json/domain/entity/post.dart';
import 'package:flutter_hive_json/domain/services/timetable_service.dart';

class ExampleWidgetModelState {
  final List<Post> posts;
  ExampleWidgetModelState({required this.posts});
}

class ExampleWidgetModel extends ChangeNotifier {
  final TimetableService _timetableService = TimetableService();
  var _staty = ExampleWidgetModelState(posts: []);
  ExampleWidgetModelState get staty => _staty;

  Future<void> _load() async {
    await _timetableService.loadValue();
    _upDateState();
  }

  Future<void> getStaty() async {
    await _timetableService.getValue();
    _upDateState();
  }

  ExampleWidgetModel() {
    _load();
  }

  void _upDateState() {
    final timetable = _timetableService.timetable;
    _staty = ExampleWidgetModelState(posts: timetable.posts);
    notifyListeners();
  }
}
