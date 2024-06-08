import 'package:flutter/material.dart';
import 'package:project_template/core/application.dart';
import 'package:project_template/core/di/configuration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const Application());
}
