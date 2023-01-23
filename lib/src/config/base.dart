import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../controllers/bottom_page1_controller.dart';
import '../controllers/content_controller.dart';
import '../controllers/home_page_controller.dart';
import '../controllers/location_controller.dart';
import '../controllers/map_view_controller.dart';
import '../controllers/material_controller.dart';
import '../controllers/menu_controller.dart';

class Base {
  final contentC = Get.put(ContentController());
  final authC = Get.put(AuthController());
  final homePageC = Get.put(HomePageController());
  final bottomPage1C = Get.put(BottomPage1Controller());
  final menuC = Get.put(MenuController());
  final mapViewC = Get.put(MapViewController());
  final materialC = Get.put(MaterialController());
  final locationC = Get.put(LocationController());
}
