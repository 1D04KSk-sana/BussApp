import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  static const String API_KYE = "AIzaSyD4jKa8v1-_3D-jbUYtJv9pqF6BmDv_iHI";

  late GoogleMapController mapController;

  final Set<Polyline> _polyline = {};

  // 大手町
  final LatLng start = const LatLng(34.70263531930244, 135.49718441206556);
  // 芦ノ湖
  final LatLng destination =
      const LatLng(34.73302146707623, 135.55713263824782);

  int moguleCount = 0;
  int drawerCount = 0;
  int count = 0;

  final _startPoints = [
    const LatLng(0, 0),
    const LatLng(34.70263531930244, 135.49718441206556),
    const LatLng(34.68994913458292, 135.51737432883576)
  ];

  final _destinationPoints = [
    const LatLng(0, 0),
    const LatLng(34.73302146707623, 135.55713263824782),
    const LatLng(34.71653452669397, 135.58266869020815)
  ];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
  }

// ルート表示データ取得
  Future<void> _getRoutes() async {
    List<LatLng> _points = await _createPolyline();
    setState(() {
      _polyline.add(Polyline(
          polylineId: const PolylineId("Route"),
          visible: true,
          color: Colors.blue,
          width: 5,
          points: _points));
    });
  }

  // マップの作成
  Widget _createMap() {
    Widget Maps;

    Maps = GoogleMap(
      mapType: MapType.normal,
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(target: start, zoom: 9),
    );

    if (moguleCount == 1) {
      Maps = GoogleMap(
          mapType: MapType.normal,
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(target: start, zoom: 9),
          polylines: _polyline,
          markers: {
            Marker(
                markerId: const MarkerId("origin"),
                position: _startPoints[count]),
            Marker(
                markerId: const MarkerId("destination"),
                position: _destinationPoints[count])
          });
    }

    return Maps;
  }

  Widget _createDrawer() {
    Widget drawers;

    drawers = Drawer(
      child: ListView(
        children: [
          SizedBox(
              height: 60,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.green.withOpacity(0.8)),
                child: const Text('メニュー'),
              )),
          ListTile(
            title: Text("72番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 1;
              moguleCount = 1;
              drawerCount = 1;
              _getRoutes();
              setState(() {});
            },
          ),
          ListTile(
            title: Text("46番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 2;
              moguleCount = 1;
              drawerCount = 1;
              _getRoutes();
              setState(() {});
            },
          )
        ],
      ),
    );

    if (drawerCount == 1) {
      drawers = Drawer(
        child: ListView(
          children: [
            SizedBox(
                height: 60,
                child: DrawerHeader(
                  decoration:
                      BoxDecoration(color: Colors.green.withOpacity(0.8)),
                  child: const Text('メニュー'),
                )),
            ListTile(
              title: Text("戻る"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                setState(() {
                  moguleCount = 0;
                  drawerCount = 0;
                });
              },
            ),
          ],
        ),
      );
    }

    return drawers;
  }

  // ルート表示
  Future<List<LatLng>> _createPolyline() async {
    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      API_KYE,
      PointLatLng(_startPoints[count].latitude, _startPoints[count].longitude),
      PointLatLng(_destinationPoints[count].latitude,
          _destinationPoints[count].longitude),
      travelMode: TravelMode.walking,
    );

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    return polylineCoordinates;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('バス停マップ'),
      ),
      body: Stack(
        children: <Widget>[
          _createMap(),
          SafeArea(
              child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, bottom: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ClipOval(
                    child: Material(
                      color: Colors.green.shade100,
                      child: InkWell(
                        splashColor: Colors.green,
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.add),
                        ),
                        onTap: () {
                          mapController.animateCamera(CameraUpdate.zoomIn());
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ClipOval(
                    child: Material(
                      color: Colors.green.shade100,
                      child: InkWell(
                        splashColor: Colors.green,
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: Icon(Icons.remove),
                        ),
                        onTap: () {
                          mapController.animateCamera(CameraUpdate.zoomOut());
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
      drawer: _createDrawer(),
    );
  }
}
