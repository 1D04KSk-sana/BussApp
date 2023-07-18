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
  if (count == 2) {
    MarkersLatLng = number.MarkersPoints18();
    MarkersName = name.MarkersName18();
  }
  if (count == 3) {
    MarkersLatLng = number.MarkersPoints19();
    MarkersName = name.MarkersName19();
  }
  if (count == 4) {
    MarkersLatLng = number.MarkersPoints21();
    MarkersName = name.MarkersName21();
  }
  if (count == 5) {
    MarkersLatLng = number.MarkersPoints31();
    MarkersName = name.MarkersName31();
  }
  if (count == 6) {
    MarkersLatLng = number.MarkersPoints34();
    MarkersName = name.MarkersName34();
  }
  if (count == 7) {
    MarkersLatLng = number.MarkersPoints35();
    MarkersName = name.MarkersName35();
  }
  if (count == 8) {
    MarkersLatLng = number.MarkersPoints45();
    MarkersName = name.MarkersName45();
  }
  if (count == 9) {
    MarkersLatLng = number.MarkersPoints46();
    MarkersName = name.MarkersName46();
  }
  if (count == 10) {
    MarkersLatLng = number.MarkersPoints78();
    MarkersName = name.MarkersName78();
  }
}

Set<Marker> GetMarkerPoints(int count) {
  GetMarkerLatLngName(count);
  MarkerPoints.clear();

  int num = 0;

  for (var i in MarkersLatLng) {
    MarkerPoints.add(
      Marker(
        markerId: MarkerId('test$num'),
        position: LatLng(i.latitude, i.longitude),
        infoWindow: InfoWindow(title: MarkersName[num]),
        icon: BitmapDescriptor.defaultMarkerWithHue(120.0),
      ),
    );

    num++;
  }

  return MarkerPoints;
}
