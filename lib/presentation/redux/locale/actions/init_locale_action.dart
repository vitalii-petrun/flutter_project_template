import 'package:async_redux/async_redux.dart';
import 'package:project_template/core/di/locator.dart';
import 'package:project_template/data/datasources/local/shared_prefs.dart';
import 'package:project_template/l10n/app_locale.dart';
import 'package:project_template/presentation/redux/app_state.dart';

class InitLocaleAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    final locale = locator<SharedPrefs>().getLocale() ?? AppLocale.en;
    return state.copyWith(appLocale: locale);
  }
}
