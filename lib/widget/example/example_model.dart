import 'package:flutter/cupertino.dart';
import 'package:flutter_hive_json/domain/entity/post.dart';
import 'package:flutter_hive_json/domain/services/session_services.dart';
import 'package:flutter_hive_json/domain/services/timetable_service.dart';

class ExampleWidgetModelState {
  final List<Post> posts;
  ExampleWidgetModelState({required this.posts});
}

class ExampleWidgetModel extends ChangeNotifier {
  final SessionServices _sessionServices = SessionServices();

  Future<void> saveNameGroup(String name) async {
    await _sessionServices.login(name);
  }

  Future<void> removeNameGroup() async {
    await _sessionServices.logout();
  }

  Future<void> getIsAuth() async {
    print(await _sessionServices.isAuth());
    print(await _sessionServices.getGrouName());
  }

  final TimetableService _timetableService = TimetableService();
  var _staty = ExampleWidgetModelState(posts: []);
  ExampleWidgetModelState get staty => _staty;

  Future<void> getValue() async {
    await _timetableService.initValue();
    _upDateState();
  }

  void _upDateState() {
    final timetable = _timetableService.timetable;
    _staty = ExampleWidgetModelState(posts: timetable.posts);
    notifyListeners();
  }
}
