import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'util/theme/theme_mode_notifier.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Selectable Themes example',
      theme: Provider.of<ThemeModeNotifier>(context).themeData,
      darkTheme: Provider.of<ThemeModeNotifier>(context).darkThemeData,
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
