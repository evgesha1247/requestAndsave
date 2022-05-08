import 'package:flutter/cupertino.dart';
import 'package:flutter_hive_json/domain/services/session_services.dart';
import 'package:flutter_hive_json/navigations.dart/navigatin_widget.dart';

class LoadWidgetModel {
  final SessionServices _sessionServices = SessionServices();
  BuildContext context;
  LoadWidgetModel(this.context) {
    _init();
  }

  Future<void> _init() async {
    final isAuth = await _sessionServices.isAuth();
    if (isAuth) {
      _goToAppPage();
    } else {
      _goToAuthPage();
    }
  }

  void _goToAuthPage() {
    Navigator.of(context).pushNamedAndRemoveUntil(
        MainNavigationRouteName.auht, (route) => false);
  }

  void _goToAppPage() {
    Navigator.of(context).pushNamedAndRemoveUntil(
        MainNavigationRouteName.example, (route) => false);
  }
}
