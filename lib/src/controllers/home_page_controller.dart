import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import 'location_controller.dart';

class HomePageController extends GetxController {
  final kMapController = MapController();
  final locationC = Get.put(LocationController());

  //========== Used to show current location on map ==============
  final isCurrentLocationEnable = RxBool(true);
  final currentLocationCircleMarker = RxList<CircleMarker>([]);

  //========== Used to draw polyline on map ==============
  final isDrawPolylineEnable = RxBool(false);
  final polylinePoints = RxList<LatLng>([]);

  final List<Polyline> polylineList = [
    Polyline(
      points: [
        LatLng(23.633229, 90.411315), LatLng(23.963229, 90.511315)
        // LatLng(23.633229395435163, 90.41131542577997),
        // LatLng(23.963229395435163, 90.51131542577997),
      ],
      strokeWidth: 5,
      // isDotted: true,
      color: Colors.redAccent,

      // onTap: () {
      //   log('Pressed>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..');
      // },
      // borderStrokeWidth: 10,
    ),
    // Polyline(
    //   points: [
    //     LatLng(23.773229395435163, 90.41131542577997),
    //     LatLng(23.873229395435163, 90.51131542577997),
    //   ],
    //   strokeWidth: 5,
    //   // isDotted: true,
    //   color: Colors.redAccent,

    //   // onTap: () {
    //   //   log('Pressed>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..');
    //   // },
    //   // borderStrokeWidth: 10,
    // ),
  ];
  final polylines = RxList<Polyline>([
    // Polyline(
    //   points: [
    //     LatLng(23.633229395435163, 90.41131542577997),
    //     LatLng(23.963229395435163, 90.51131542577997),
    //   ],
    //   strokeWidth: 5,
    //   // isDotted: true,
    //   color: Colors.redAccent,

    //   // onTap: () {
    //   //   log('Pressed>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..');
    //   // },
    //   // borderStrokeWidth: 10,
    // ),
    // Polyline(
    //   points: [
    //     LatLng(23.773229395435163, 90.41131542577997),
    //     LatLng(23.873229395435163, 90.51131542577997),
    //   ],
    //   strokeWidth: 5,
    //   // isDotted: true,
    //   color: Colors.redAccent,

    //   // onTap: () {
    //   //   log('Pressed>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..');
    //   // },
    //   // borderStrokeWidth: 10,
    // ),
  ]);

  //========== Used to draw polygone on map ==============
  final isDrawPolygoneEnable = RxBool(false);
  final polygonePoints = RxList<LatLng>([]);

  void addPolylinePoint(LatLng point) {
    polylinePoints.add(point);
    log('$point');
  }

  void polylineDrawStart() {
    if (!isDrawPolylineEnable.value) {
      if (polylinePoints.isNotEmpty) {
        var polyline = Polyline(
          points: polylinePoints,
          strokeWidth: 5,
          // isDotted: true,
          color: Colors.redAccent,
        );

        polylines.add(polyline);
        // polylineList.add(polyline);
        polylinePoints.clear();
        log('${polylineList.length}');
        // log('${polylines[0].points}');
        log('${polylines}');
      }
    }
  }

  void clearPolylines() {
    polylinePoints.clear();
  }

  void clearAllDataFromMap() {
    polylinePoints.clear();
    polygonePoints.clear();
    polylines.clear();
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
      log('skhdgvshbv');
      try {
        final currentLatLng = locationC.getCurrenLatLng();

        log('$currentLatLng');
        if (currentLatLng != null) {
          if (cameraMove) {
            log('$cameraMove');
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
