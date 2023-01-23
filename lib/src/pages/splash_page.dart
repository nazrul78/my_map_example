import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/config_controller.dart';
import '../helpers/k_text.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Get.put(ConfigController()).init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: KText(
            text: 'Welcome to My Map',
            bold: true,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10),
        CircularProgressIndicator(
          strokeWidth: 3,
          color: Colors.amber,
        ),
      ],
    ));
  }
}
