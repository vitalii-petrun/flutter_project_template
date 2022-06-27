import 'package:injectable/injectable.dart';
import 'package:project_template/core/di/configuration.config.dart';
import 'package:project_template/core/di/locator.dart';

@InjectableInit(
  initializerName: r'$configureDependencies',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => $configureDependencies(locator);
