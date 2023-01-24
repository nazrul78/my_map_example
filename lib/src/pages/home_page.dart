import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:latlong2/latlong.dart';

import '../config/base.dart';
import '../helpers/hex_color.dart';
import '../helpers/render_svg.dart';

class HomePage extends StatelessWidget with Base {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => FlutterMap(
          mapController: homePageC.kMapController,
          options: MapOptions(
            absorbPanEventsOnScrollables: false,
            onTap: (tapPosition, point) {
              if (homePageC.isDrawPolylineEnable.value) {
                homePageC.addPolylinePoint(point);
              } else if (homePageC.isDrawPolygoneEnable.value) {
                homePageC.addPolygonPoint(point);
              }
            },
            onLongPress: (tapPosition, point) {
              homePageC.addPolygonPoint(point);
            },
            center: LatLng(23.773229395435163, 90.41131542577997),
            zoom: 10,
            maxZoom: 18,
          ),
          nonRotatedChildren: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    // ============== Used to show current location on map ===========
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: JustTheTooltip(
                        tailLength: 12.0,
                        offset: 5,
                        preferredDirection: AxisDirection.left,
                        content: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Current Location',
                            style: TextStyle(
                              fontFamily: 'Manrope Regular',
                              fontSize: 14.0,
                              color: hexToColor('#434969'),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            // homePageC.isCurrentLocationEnable.toggle();
                            homePageC.showCurrentLocationOnMap(
                                cameraMove: true);
                          },
                          child: Container(
                            // width: 32,
                            // height: 30,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              // color: homePageC.isCurrentLocationEnable.value
                              //     ? hexToColor('#6EA178')
                              //     : hexToColor('#95C08B'),
                            ),
                            child: RenderSvg(
                              path: 'my_present_position',
                              width: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ============== Used to draw a polyline on map ===========

                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: JustTheTooltip(
                        tailLength: 12.0,
                        offset: 5,
                        preferredDirection: AxisDirection.left,
                        content: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Polilyne',
                            style: TextStyle(
                              fontFamily: 'Manrope Regular',
                              fontSize: 14.0,
                              color: hexToColor('#434969'),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: (() {
                            // homePageC.clearPolylines();
                            homePageC.isDrawPolylineEnable.toggle();
                            homePageC.polylineDrawStart();
                          }),
                          child: Container(
                              width: 32,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: homePageC.isDrawPolylineEnable.value
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                              child: Icon(
                                Icons.polyline,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),

                    // ============== Used to draw a polygon on map ===========

                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: JustTheTooltip(
                        tailLength: 12.0,
                        offset: 5,
                        preferredDirection: AxisDirection.left,
                        content: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Polygon',
                            style: TextStyle(
                              fontFamily: 'Manrope Regular',
                              fontSize: 14.0,
                              color: hexToColor('#434969'),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: (() {
                            homePageC.isDrawPolygoneEnable.toggle();
                          }),
                          child: Container(
                              width: 32,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: homePageC.isDrawPolygoneEnable.value
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                              child: Icon(
                                Icons.square_outlined,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),

                    // ============== Used to change map type ===========
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: JustTheTooltip(
                        tailLength: 12.0,
                        offset: 5,
                        preferredDirection: AxisDirection.left,
                        content: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Satellite view',
                            style: TextStyle(
                              fontFamily: 'Manrope Regular',
                              fontSize: 14.0,
                              color: hexToColor('#434969'),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: (() {
                            log('masdhvc');
                            // homePageC.isSelectMapTypeEnable
                            //     .toggle();
                          }),
                          child: Container(
                              width: 32,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),

                                color: Colors.grey,
                                // color: homeMapViewC
                                //         .isSelectMapTypeEnable
                                //         .value
                                //     ? hexToColor('#6EA178')
                                //     : hexToColor('#95C08B'),
                              ),
                              child: Icon(
                                Icons.map,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: JustTheTooltip(
                        tailLength: 12.0,
                        offset: 5,
                        preferredDirection: AxisDirection.left,
                        content: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Clear all data',
                            style: TextStyle(
                              fontFamily: 'Manrope Regular',
                              fontSize: 14.0,
                              color: hexToColor('#434969'),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: (() {
                            homePageC.clearAllDataFromMap();
                          }),
                          child: Container(
                              width: 32,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),

                                color: Colors.grey,
                                // color: homeMapViewC
                                //         .isSelectMapTypeEnable
                                //         .value
                                //     ? hexToColor('#6EA178')
                                //     : hexToColor('#95C08B'),
                              ),
                              child: Icon(
                                Icons.clear,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
          children: [
            TileLayer(
              urlTemplate:

                  //'http://172.16.0.10/map/tilesBD/{z}/{x}/{y}.png',

                  // ---------------google Satellite Map view -------------------
                  // 'http://www.google.cn/maps/vt?lyrs=s@189&gl=cn&x={x}&y={y}&z={z}',

                  // ---------------OSM Map server -------------------
                  'https://tile.openstreetmap.org/{z}/{x}/{y}.png',

              // userAgentPackageName: '',
            ),

            CircleLayer(
              circles: homePageC.currentLocationCircleMarker,
            ),

            PolylineLayer(
              polylineCulling: true,
              polylines: [
                Polyline(
                  points: homePageC.polylinePoints,
                  strokeWidth: 5,
                  // isDotted: true,
                  color: Colors.redAccent,

                  // onTap: () {
                  //   log('Pressed>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..');
                  // },
                  // borderStrokeWidth: 10,
                ),
              ],
            ),

            PolylineLayer(
              polylineCulling: true,
              polylines: homePageC.polylines,
              // polylines: homePageC.polylineList,
            ),

            // PolylineLayer(
            //   polylineCulling: true,
            //   polylines: [
            //     Polyline(
            //       points: [
            //         LatLng(23.633229395435163, 90.41131542577997),
            //         LatLng(23.963229395435163, 90.51131542577997),
            //       ],
            //       strokeWidth: 5,
            //       // isDotted: true,
            //       color: Colors.redAccent,

            //       // onTap: () {
            //       //   log('Pressed>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..');
            //       // },
            //       // borderStrokeWidth: 10,
            //     ),
            //     Polyline(
            //       points: [
            //         LatLng(23.773229395435163, 90.41131542577997),
            //         LatLng(23.873229395435163, 90.51131542577997),
            //       ],
            //       strokeWidth: 5,
            //       // isDotted: true,
            //       color: Colors.redAccent,

            //       // onTap: () {
            //       //   log('Pressed>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..');
            //       // },
            //       // borderStrokeWidth: 10,
            //     ),
            //   ],
            // ),

            PolygonLayer(
              polygonCulling: true,
              polygons: [
                Polygon(
                  points: homePageC.polygonePoints,
                  //color: Colors.blue,
                  borderStrokeWidth: 5,
                  borderColor: Colors.blue,
                ),
              ],
            ),

            // CircleLayer(
            //   circles: [
            //     CircleMarker(
            //       point: LatLng(23.992449, 90.58287),
            //       radius: 5050,
            //       useRadiusInMeter: true,
            //       color: Colors.blue.withOpacity(.5),
            //       borderStrokeWidth: 2,
            //       //borderColor: Colors.white,
            //     ),
            //   ],
            // ),

            // // CircleLayer(
            // //   circles: homePageC.currentLocationCircleMarker,
            // // ),

            // // DragMarkers(
            // //   markers: [],
            // // ),
            // PolygonLayer(
            //   polygonCulling: true,
            //   polygons: [
            //     Polygon(
            //       points: [
            //         LatLng(23.915449, 90.36787),
            //         LatLng(23.925449, 90.46787),
            //         LatLng(23.935449, 90.46787),
            //         LatLng(23.945449, 90.36787),
            //         LatLng(23.915449, 90.36787),
            //       ],
            //       //color: Colors.blue,
            //       borderStrokeWidth: 5,
            //       borderColor: Colors.blue,
            //     ),
            //   ],
            // ),

            // PolylineLayer(
            //   polylineCulling: true,
            //   polylines: [
            //     Polyline(
            //       points: [
            //         LatLng(23.773229395435163, 90.41131542577997),
            //         LatLng(23.873229395435163, 90.51131542577997),
            //       ],
            //       strokeWidth: 5,
            //       // isDotted: true,
            //       color: Colors.redAccent,

            //       // onTap: () {
            //       //   log('Pressed>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..');
            //       // },
            //       // borderStrokeWidth: 10,
            //     ),
            //   ],
            // ),
            // MarkerLayer(
            //   markers: [
            //     Marker(
            //       width: 80,
            //       height: 80,
            //       point: LatLng(23.805449, 90.36787),
            //       builder: (ctx) => GestureDetector(
            //         onTap: () {
            //           Get.defaultDialog(
            //               content: Center(
            //             child: Text('Hello..........'),
            //           ));
            //           // ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
            //           //   content: Text('Tapped on purple FlutterLogo Marker'),
            //           // ));
            //         },
            //         //  child: const FlutterLogo(textColor: Colors.purple),
            //         child: Icon(
            //           Icons.location_on,
            //           size: 80,
            //           color: Colors.blue,
            //         ),
            //       ),
            //     ),
            //     // Marker(
            //     //   point: LatLng(30, 40),
            //     //   width: 80,
            //     //   height: 80,
            //     //   builder: (context) => FlutterLogo(),
            //     // ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
