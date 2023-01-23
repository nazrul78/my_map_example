import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import '../helpers/route.dart';
import '../pages/main_page.dart';
import 'dart:async';

import '../config/app_theme.dart';
import '../config/base.dart';

class ConfigController extends GetxController with Base {
  Future<void> initAppConfig() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Initialize global environment variables
    await dotenv.load();
    // ---------------------------------------------------
    // Initialize Hive DB
    // await Get.put(HiveService()).onInitForApp();
    // ---------------------------------------------------

    // Setup App system theme [AppBar & System Navigation]
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppTheme.appbarColor,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.grey[50],
      systemNavigationBarColor: Colors.grey[50],
    ));
    // ---------------------------------------------------

    //-------------------------To get Location Permission-----------------
    // To get location permition.
    await locationC.getLocationPermission();

    // To listen current latlng after per second.
    await locationC.locationListener();

    // Set Orientation [default : portrait]
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // ---------------------------------------------------
  }

// Initialize page after default configuration
  void init() async {
    await Future.delayed(Duration(seconds: 3));
    offAll(MainPage());
    //Get.to(()=>SignUpPage());
    //Get.to(()=>LoginPage());
  }
// ---------------------------------------------------
}
