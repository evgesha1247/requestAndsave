import 'package:flutter/material.dart';
import 'package:flutter_hive_json/pages/page_factory/page_factory.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final app = PageFactory().mMyAppWidget();
  await Hive.initFlutter();
  runApp(app);
}
