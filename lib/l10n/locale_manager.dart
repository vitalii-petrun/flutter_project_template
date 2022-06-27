import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:project_template/l10n/app_locale.dart';
import 'package:project_template/presentation/redux/locale/actions/set_locale_action.dart';

abstract class LocaleManager {
  static void setLocaleAction(BuildContext context, AppLocale locale) {
    StoreProvider.dispatch(context, SetLocaleAction(locale));
  }
}
