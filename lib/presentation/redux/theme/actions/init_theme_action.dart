import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:project_template/core/di/locator.dart';
import 'package:project_template/data/datasources/local/shared_prefs.dart';
import 'package:project_template/presentation/redux/app_state.dart';

class InitThemeAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    final themeMode = locator<SharedPrefs>().getThemeMode() ?? ThemeMode.light;
    return state.copyWith(themeMode: themeMode);
  }
}
