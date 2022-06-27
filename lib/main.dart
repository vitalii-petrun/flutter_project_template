import 'package:flutter/material.dart';
import 'package:project_template/core/application.dart';
import 'package:project_template/core/di/configuration.dart';
import 'package:project_template/presentation/redux/locale/actions/init_locale_action.dart';
import 'package:project_template/presentation/redux/store.dart';
import 'package:project_template/presentation/redux/theme/actions/init_theme_action.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  final store = newStore();
  store.dispatch(InitThemeAction());
  store.dispatch(InitLocaleAction());
  runApp(Application(store: store));
}
