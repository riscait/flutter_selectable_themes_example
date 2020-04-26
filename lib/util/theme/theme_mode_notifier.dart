import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ex_theme_mode.dart';

class ThemeModeNotifier extends ChangeNotifier {
  ThemeModeNotifier({@required int id})
      : current = ExThemeMode.values
            .firstWhere((e) => e.id == id, orElse: () => ExThemeMode.system);

  ExThemeMode current;

  static const String selectedThemeKey = 'selectedTheme';

  Future change(ExThemeMode mode) async {
    current = mode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(selectedThemeKey, mode.id);
    notifyListeners();
  }

  ThemeData get themeData => current.themeData;
  ThemeData get darkThemeData => current.darkThemeData;
}
