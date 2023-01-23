import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';

import 'location_controller.dart';

class BottomPage1Controller extends GetxController {
  final kMapController = MapController();
  final locationC = Get.put(LocationController());
  final currentLocationCircleMarker = RxList<CircleMarker>([]);

  final selectedSubjectId = RxString('');
  final subjectList = RxList<Subjact>([
    Subjact(
      subjectName: 'All',
      subjectId: '',
    ),
    Subjact(
      subjectName: 'Subjact 1',
      subjectId: 'kshbvisfbhvjhbv',
    ),
    Subjact(
      subjectName: 'Subjact 2',
      subjectId: 'kshbvisfb5cvfbd8hvjhbv',
    ),
    Subjact(
      subjectName: 'Subjact 3',
      subjectId: 'kshbvisf85858bhhtgvjhbv',
    ),
    Subjact(
      subjectName: 'Subjact 4',
      subjectId: 'kshbvisf8585df8bhvjhbv',
    ),
    Subjact(
      subjectName: 'Subjact 5',
      subjectId: 'kshbvisf85858asbhvjhbv',
    ),
  ]);

  //========== Used to show current location on map ==============
  final isCurrentLocationEnable = RxBool(false);

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

class Subjact {
  String? subjectName;
  String? subjectId;

  Subjact({
    this.subjectName,
    this.subjectId,
  });
}
