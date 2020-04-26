import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'util/theme/theme_mode_notifier.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final themeModeId = prefs.getInt(ThemeModeNotifier.selectedThemeKey);
  return runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeModeNotifier(id: themeModeId),
      child: const App(),
    ),
  );
}
