import 'package:flutter/material.dart';
import 'package:flutter_hive_json/domain/entity/post.dart';
import 'package:flutter_hive_json/widget/app/my_app_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  const myAppWidget = MyAppWidget();
  runApp(myAppWidget);
}
