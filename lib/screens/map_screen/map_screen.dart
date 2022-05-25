import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {

  static const initialCameraPosition=CameraPosition(
      target: LatLng(37.773972, -122.431297),
    zoom: 12
  );
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:GoogleMap(
        initialCameraPosition: initialCameraPosition,
        myLocationButtonEnabled: true, //false
        zoomControlsEnabled: false,

      )
    );
  }
}
