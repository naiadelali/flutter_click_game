import 'package:click_gamer/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'click_game_page_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Click Game',
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        home: ClickGamePage());
  }
}
