import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import './number.dart';
import './name.dart';

Number number = Number();
Name name = Name();

Set<Marker> MarkerPoints = {};

List<LatLng> MarkersLatLng = [];
List<String> MarkersName = [];

void GetMarkerLatLngName(int count) {
  MarkersLatLng.clear();
  MarkersName.clear();
  if (count == 1) {
    MarkersLatLng = number.MarkersPoints10();
    MarkersName = name.MarkersName10();
  }
}

Set<Marker> GetMarkerPoints(int count) {
  GetMarkerLatLngName(count);
  MarkerPoints.clear();

  int num = 0;

  for (var i in MarkersLatLng) {
    MarkerPoints.add(
      Marker(
        markerId: const MarkerId('test'),
        position: LatLng(i.latitude, i.longitude),
        infoWindow: InfoWindow(title: MarkersName[num]),
        icon: BitmapDescriptor.defaultMarkerWithHue(120.0),
      ),
    );

    num++;
  }

  return MarkerPoints;
}
