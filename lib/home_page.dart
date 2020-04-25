import 'package:flutter/material.dart';

import 'util/theme/theme_list_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const SafeArea(
        child: ThemeListView(),
      ),
    );
  }
}
