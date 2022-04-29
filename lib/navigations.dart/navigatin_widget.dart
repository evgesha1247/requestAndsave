import 'package:flutter/material.dart';
import 'package:flutter_hive_json/pages/page_factory/page_factory.dart';

abstract class MainNavigationRouteName {
  static const main = '/';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteName.main;
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        MainNavigationRouteName.main: (context) =>
            PageFactory().mExampleWidget(),
      };
  Route<Object>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        const RouteWidget();
    }
    return null;
  }
}

class RouteWidget extends StatelessWidget {
  const RouteWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ошибка навигации !'),
      ),
    );
  }
}
