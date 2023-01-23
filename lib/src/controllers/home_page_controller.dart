import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import 'location_controller.dart';

class HomePageController extends GetxController {
  final kMapController = MapController();
  final locationC = Get.put(LocationController());
  final currentLocationCircleMarker = RxList<CircleMarker>([]);

  //========== Used to show current location on map ==============
  final isCurrentLocationEnable = RxBool(false);

  //========== Used to draw polyline on map ==============
  final polylinePoints = RxList<LatLng>([]);

  //========== Used to draw polygone on map ==============
  final polygonePoints = RxList<LatLng>([]);

  void addPolylinePoint(LatLng point) {
    polylinePoints.add(point);
    log('$point');
  }

  void clearPolylines() {
    polylinePoints.clear();
  }

  void addPolygonPoint(LatLng point) {
    polygonePoints.add(point);
    log('$point' + '>>>>>>>>>>>>>>');
  }

  void clearPolygons() {
    polygonePoints.clear();
  }

  /// To get current location and show on map.
  void showCurrentLocationOnMap({bool cameraMove = false}) {
    currentLocationCircleMarker.clear();
    if (isCurrentLocationEnable.value) {
      try {
        final currentLatLng = locationC.getCurrenLatLng();

        if (currentLatLng != null) {
          if (cameraMove) {
            kMapController.move(currentLatLng, 12);
          }

          currentLocationCircleMarker.add(
            CircleMarker(
              point: currentLatLng,
              radius: 9,
              useRadiusInMeter: false,
              color: Colors.blue,
              borderStrokeWidth: 3,
              borderColor: Colors.white,
            ),
          );
        }
      } catch (e) {
        log(e.toString());
      }
    }
  }
}
