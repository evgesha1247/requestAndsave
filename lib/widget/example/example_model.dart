import 'package:flutter/cupertino.dart';
import 'package:flutter_hive_json/domain/entity/less.dart';
import 'package:flutter_hive_json/domain/services/timetable_service.dart';

class ExampleWidgetModelState {
  final List<Less> lessons;
  ExampleWidgetModelState({required this.lessons});
}

class ExampleWidgetModel extends ChangeNotifier {
  final TimetableService _timetableService = TimetableService();
  var _staty = ExampleWidgetModelState(lessons: []);
  ExampleWidgetModelState get staty => _staty;
}
