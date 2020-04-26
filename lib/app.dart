import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'util/theme/theme_mode_notifier.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    final themeModeNotifier = Provider.of<ThemeModeNotifier>(context);
    return MaterialApp(
      title: 'Flutter Selectable Themes example',
      theme: themeModeNotifier.themeData,
      darkTheme: themeModeNotifier.darkThemeData,
      home: const HomePage(),
    );
  }
}
