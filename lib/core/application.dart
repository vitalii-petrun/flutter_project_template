import 'package:flutter/material.dart';
import 'package:project_template/l10n/l10n.dart';
import 'package:project_template/presentation/pages/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
