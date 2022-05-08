import 'package:flutter/material.dart';
import 'package:flutter_hive_json/pages/page_auth/auth.dart';
import 'package:flutter_hive_json/pages/page_auth/auth_model.dart';
import 'package:flutter_hive_json/pages/page_load/load.dart';
import 'package:flutter_hive_json/pages/page_load/load_model.dart';
import 'package:flutter_hive_json/ui/widget/example/example.dart';
import 'package:flutter_hive_json/ui/widget/example/example_model.dart';
import 'package:provider/provider.dart';

class PageFactory {
  Widget mAuhtWidget() => ChangeNotifierProvider(
        create: (_) => AuhtWidgetModel(),
        child: const AuhtWidget(),
      );
  Widget mExampleWidget() => ChangeNotifierProvider(
        create: (_) => ExampleWidgetModel(),
        child: const ExampleWidget(),
      );
  Widget mLoadWidget() => Provider(
        create: (context) => LoadWidgetModel(context),
        lazy: false,
        child: const LoadWidget(),
      );
}
