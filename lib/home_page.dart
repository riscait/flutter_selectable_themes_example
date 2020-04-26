import 'package:flutter/material.dart';

import 'util/theme/theme_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Selector'),
      ),
      body: const SafeArea(
        child: ThemeListView(),
      ),
    );
  }
}
