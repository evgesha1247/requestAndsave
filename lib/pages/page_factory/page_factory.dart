import 'package:flutter/material.dart';
import 'package:flutter_hive_json/widget/example/example_model.dart';
import 'package:flutter_hive_json/widget/example/example_widget.dart';
import 'package:provider/provider.dart';

class PageFactory {
  Widget mExampleWidget() => ChangeNotifierProvider(
        create: (context) => ExampleWidgetModel(),
        child: const ExampleWidget(),
      );
}
