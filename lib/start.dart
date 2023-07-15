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
  static const String API_KYE = "AIzaSyB82zSwk2xc4rdlU7Gl2N2HlTtIY_B8xDU";

  late GoogleMapController mapController;

  final Set<Polyline> _polyline = {};

  // 大手町
  final LatLng start = const LatLng(34.70263531930244, 135.49718441206556);
  // 芦ノ湖
  final LatLng destination =
      const LatLng(34.73302146707623, 135.55713263824782);

  int moguleCount = 0;
  int count = 0;

  final _startPoints = [
    const LatLng(34.70263531930244, 135.49718441206556),
  ];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    _getRoutes();
  }

// ルート表示データ取得
  Future<void> _getRoutes() async {
    List<LatLng> _points = await _createPolyline(count);
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
                markerId: const MarkerId("destination"), position: destination)
          });
    }

    return Maps;
  }

  // ルート表示
  Future<List<LatLng>> _createPolyline(int count) async {
    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      API_KYE,
      PointLatLng(
          _startPoints[count - 1].latitude, _startPoints[count - 1].longitude),
      PointLatLng(destination.latitude, destination.longitude),
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
      drawer: Drawer(
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
              title: Text("72番線"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                setState(() {
                  moguleCount = 1;
                  count = 1;
                });
              },
            ),
            ListTile(
              title: Text("Item 2"),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
