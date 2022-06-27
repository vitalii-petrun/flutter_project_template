import 'package:async_redux/async_redux.dart';
import 'package:project_template/core/di/locator.dart';
import 'package:project_template/data/datasources/local/shared_prefs.dart';
import 'package:project_template/l10n/app_locale.dart';
import 'package:project_template/presentation/redux/app_state.dart';

class SetLocaleAction extends ReduxAction<AppState> {
  final AppLocale locale;

  SetLocaleAction(this.locale);

  @override
  Future<AppState> reduce() async {
    await locator<SharedPrefs>().setLocale(locale);
    return state.copyWith(appLocale: locale);
  }
}
