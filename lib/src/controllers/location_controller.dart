import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

class LocationController extends GetxController {
  Location location = Location();

  LatLng? currentLatLng;

  /// To listen current location after per second.
  Future<void> locationListener() async {
    final permissionGranted = await location.hasPermission();
    if (permissionGranted != PermissionStatus.denied) {
      location.onLocationChanged.listen(
        (LocationData currentLocation) {
          try {
            if (currentLocation != null) {
              final latLng = LatLng(
                currentLocation.latitude!,
                currentLocation.longitude!,
              );
              currentLatLng = latLng;
              //=============== To move current location when it changing ===========
              //   Get.put(HomeMapViewController()).showCurrentLocationOnMap();
            }
          } catch (e) {
            log(e.toString());
          }
        },
      );
    }
  }

  //Background Location unable
  Future<bool> toggleBackgroundMode({bool enable: false}) async {
    try {
      final bool result = await location.enableBackgroundMode(enable: enable);
      return result;
    } on PlatformException catch (err) {
      return false;
    }
  }

  /// To get current Location data.
  Future<LocationData?> getCurrentLocation() async {
    try {
      final LocationData currentLocation = await location.getLocation();
      if (currentLocation != null) {
        return currentLocation;
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  /// To get current LatLng.
  LatLng? getCurrenLatLng() {
    try {
      if (currentLatLng != null) {
        return currentLatLng;
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  /// To get current Location Permission.
  Future<void> getLocationPermission() async {
    Location locations = Location();
    bool isServiceEnabled;
    PermissionStatus isPermissionGranted;

    isServiceEnabled = await locations.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await locations.requestService();
      if (!isServiceEnabled) {
        return;
      }
    }
    isPermissionGranted = await locations.hasPermission();
    if (isPermissionGranted == PermissionStatus.denied) {
      isPermissionGranted = await locations.requestPermission();
      if (isPermissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }
}
