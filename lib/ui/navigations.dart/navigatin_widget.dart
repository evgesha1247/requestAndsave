import 'package:flutter/material.dart';
import 'package:flutter_hive_json/pages/page_factory/page_factory.dart';

abstract class MainNavigationRouteName {
  static const example = 'example';
  static const auht = 'auht';
  static const load = 'load';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteName.load;
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        MainNavigationRouteName.auht: (_) => PageFactory().mAuhtWidget(),
        MainNavigationRouteName.load: (_) => PageFactory().mLoadWidget(),
        MainNavigationRouteName.example: (_) => PageFactory().mExampleWidget(),
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
