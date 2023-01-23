import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_map_example/src/app.dart';
import 'package:my_map_example/src/controllers/config_controller.dart';

void main() async {
  await Get.put(ConfigController()).initAppConfig();
  runApp(App());
}
