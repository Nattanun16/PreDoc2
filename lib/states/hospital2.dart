import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:predoc1/states/mapbuttompill.dart';
import 'package:predoc1/states/mapuserbadge.dart';
import 'package:predoc1/utility/my_constant.dart';

LatLng SOURCE_LOCATION = LatLng(16.866437, 100.670591);
LatLng DEST_LOCATION = LatLng(16.834065, 100.254326);
double CAMERA_ZOOM = 16;
double CAMERA_TILT = 80;
double CAMERA_BEARING = 30;

class Hospital2 extends StatefulWidget {
  const Hospital2({Key? key}) : super(key: key);

  @override
  _Hospital2State createState() => _Hospital2State();
}

class _Hospital2State extends State<Hospital2> {
  Completer<GoogleMapController> _controller = Completer();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  Set<Marker> _markers = Set<Marker>();

  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];
  late PolylinePoints polylinePoints;

  late LatLng currentLocation;
  late LatLng destinationLocation;

  @override
  void initState() {
    super.initState();

    polylinePoints = PolylinePoints();

    // set up initial locations
    this.setInitialLocation();
    // set up the marker icons
    this.setSourceAndDestinationMarkerIcons();
  }

  void setSourceAndDestinationMarkerIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: 2.0),
      'images/marker.png',
    );

    destinationIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: 2.0),
      'images/markerr.png',
    );
  }

  void setInitialLocation() {
    setState(
      () {
        currentLocation = LatLng(
          SOURCE_LOCATION.latitude,
          SOURCE_LOCATION.longitude,
        );

        destinationLocation = LatLng(
          DEST_LOCATION.latitude,
          DEST_LOCATION.longitude,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    CameraPosition initialCameraPosition = CameraPosition(
      zoom: CAMERA_ZOOM,
      tilt: CAMERA_TILT,
      bearing: CAMERA_BEARING,
      target: SOURCE_LOCATION,
    );
    CameraPosition(
      zoom: CAMERA_ZOOM,
      tilt: CAMERA_TILT,
      bearing: CAMERA_BEARING,
      target: DEST_LOCATION,
    );
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              myLocationEnabled: true,
              compassEnabled: false,
              tiltGesturesEnabled: false,
              polylines: _polylines,
              markers: _markers,
              mapType: MapType.normal,
              initialCameraPosition: initialCameraPosition,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);

                showPinsOnMap();
                setPolylines();
              },
            ),
          ),
          const Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: MapUserBadge(),
          ),
          const AnimatedPositioned(
            child: MapButtomPill(),
            curve: Curves.easeInOut,
            left: 0,
            right: 0,
            bottom: 20,
            duration: const Duration(milliseconds: 500),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: MapButtomPill(),
          )
        ],
      ),
    );
  }

  void showPinsOnMap() {
    setState(
      () {
        _markers.add(
          Marker(
              markerId: MarkerId('sourcePin'),
              position: currentLocation,
              icon: sourceIcon),
        );

        _markers.add(
          Marker(
              markerId: MarkerId('destinationPin'),
              position: destinationLocation,
              icon: destinationIcon),
        );
      },
    );
  }

  void setPolylines() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "API_KEY",
      PointLatLng(
        currentLocation.latitude,
        currentLocation.longitude,
      ),
      PointLatLng(
        destinationLocation.latitude,
        destinationLocation.longitude,
      ),
    );

    if (result.status == 'OK') {
      result.points.forEach(
        (PointLatLng point) {
          polylineCoordinates.add(
            LatLng(point.latitude, point.longitude),
          );
        },
      );

      setState(() {
        _polylines.add(
          Polyline(
            width: 10,
            polylineId: PolylineId('polyLine'),
            color: Color(0xFF08A5CB),
            points: polylineCoordinates,
          ),
        );
      });
    }
  }
}
