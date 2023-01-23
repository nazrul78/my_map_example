import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:my_map_example/src/pages/splash_page.dart';

import 'config/app_theme.dart';
import 'config/base.dart';
import 'config/scroll_behavior_modified.dart';

class App extends StatelessWidget with Base {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, widget) => ScrollConfiguration(
          behavior: ScrollBehaviorModified(), child: widget!),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: SplashPage(),
    );
  }
}
