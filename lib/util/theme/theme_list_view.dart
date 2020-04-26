import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ex_theme_mode.dart';
import 'theme_mode_notifier.dart';

class ThemeListView extends StatelessWidget {
  const ThemeListView();

  @override
  Widget build(BuildContext context) {
    final themeModeNotifier = Provider.of<ThemeModeNotifier>(context);
    var _selectedTheme = themeModeNotifier.current;
    return ListView.builder(
      itemCount: ExThemeMode.values.length,
      itemBuilder: (_, index) {
        final themeDataMode = ExThemeMode.values[index];
        return RadioListTile(
          title: Text(themeDataMode.name),
          subtitle: Text(themeDataMode.description),
          secondary: Icon(themeDataMode.icon),
          controlAffinity: ListTileControlAffinity.platform,
          value: themeDataMode,
          groupValue: _selectedTheme,
          onChanged: (ExThemeMode theme) {
            _selectedTheme = theme;
            themeModeNotifier.change(theme);
          },
        );
      },
    );
  }
}
