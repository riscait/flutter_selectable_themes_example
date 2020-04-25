import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ex_theme_mode.dart';
import 'theme_mode_notifier.dart';

class ThemeListView extends StatefulWidget {
  const ThemeListView();

  @override
  _ThemeListViewState createState() => _ThemeListViewState();
}

class _ThemeListViewState extends State<ThemeListView> {
  ExThemeMode _selectedTheme;

  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeModeNotifier>(context);
    _selectedTheme = themeController.current;
    return ListView.builder(
      itemCount: ExThemeMode.values.length,
      itemBuilder: (_, index) {
        final themeDataMode = ExThemeMode.values[index];
        return RadioListTile(
          value: themeDataMode,
          groupValue: _selectedTheme,
          onChanged: (ExThemeMode theme) {
            setState(() => _selectedTheme = theme);
            themeController.change(theme);
          },
          title: Text(themeDataMode.name),
          subtitle: Text(themeDataMode.description),
          secondary: Icon(themeDataMode.icon),
          controlAffinity: ListTileControlAffinity.platform,
        );
      },
    );
  }
}
