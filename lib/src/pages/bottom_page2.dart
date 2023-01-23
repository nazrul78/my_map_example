import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import '../config/base.dart';

class BottomPage2 extends StatelessWidget with Base {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          absorbPanEventsOnScrollables: false,
          onTap: (tapPosition, point) {},
          center: LatLng(23.773229395435163, 90.41131542577997),
          zoom: 15,
          maxZoom: 18,
        ),
        nonRotatedChildren: [],
        children: [
          TileLayer(
            urlTemplate:
                'http://www.google.cn/maps/vt?lyrs=s@189&gl=cn&x={x}&y={y}&z={z}',

            // ---------------google Satellite Map view -------------------
            // 'http://www.google.cn/maps/vt?lyrs=s@189&gl=cn&x={x}&y={y}&z={z}',

            // ---------------OSM Map server -------------------
            //  'https://tile.openstreetmap.org/{z}/{x}/{y}.png',

            // userAgentPackageName: '',
          ),
          CircleLayer(
            circles: homePageC.currentLocationCircleMarker,
          ),

          // DragMarkers(
          //   markers: [],
          // ),
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
    );
  }
}
