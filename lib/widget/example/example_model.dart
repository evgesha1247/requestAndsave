import 'package:flutter/cupertino.dart';
import 'package:flutter_hive_json/domain/entity/post.dart';
import 'package:flutter_hive_json/domain/services/session_services.dart';
import 'package:flutter_hive_json/domain/services/timetable_service.dart';
import 'package:flutter_hive_json/navigations.dart/navigatin_widget.dart';

class ExampleWidgetModelState {
  final List<Post> posts;
  ExampleWidgetModelState({required this.posts});
}

class ExampleWidgetModel extends ChangeNotifier {
  final SessionServices _sessionServices = SessionServices();
  final TimetableService _timetableService = TimetableService();
  var _staty = ExampleWidgetModelState(posts: []);
  ExampleWidgetModelState get staty => _staty;

  ExampleWidgetModel() {
    getValue();
  }
  Future<void> logout(BuildContext context) async {
    await _sessionServices.logout();
    Navigator.of(context).pushNamedAndRemoveUntil(
        MainNavigationRouteName.load, (route) => false);
  }

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
