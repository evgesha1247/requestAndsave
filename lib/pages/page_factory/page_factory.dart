import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_hive_json/pages/example/example_model.dart';
import 'package:flutter_hive_json/pages/example/example_widget.dart';

class PageFactory {
  Widget mExampleWidget() => ChangeNotifierProvider(
        create: (context) => ExampleWidgetModel(),
        child: const ExampleWidget(),
      );
}
