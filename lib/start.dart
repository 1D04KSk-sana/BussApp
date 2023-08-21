import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import './number.dart';
import './name.dart';
import './marker.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  static const String API_KYE = "AIzaSyD4jKa8v1-_3D-jbUYtJv9pqF6BmDv_iHI";

  late GoogleMapController mapController;

  final Set<Polyline> _polyline = {};
  final Set<Marker> _marker = {};

  Number number = Number();
  Name name = Name();

  _creatPolylines() {
    _polyline.clear();
  }

  // 大手町
  final LatLng start = const LatLng(34.70263531930244, 135.49718441206556);

  int moguleCount = 0;
  int drawerCount = 0;
  int count = 0;

  late List<LatLng> startPoints = number.startLatLang();

  late List<LatLng> destinationPoints = number.destinationLatLng();

  late List<String> startDestinationName = [];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
  }

  void SetMarkerPoints(int count) {
    _marker.clear();
    _marker.add(
      Marker(
        markerId: const MarkerId("origin"),
        position: startPoints[count],
        infoWindow: InfoWindow(title: startDestinationName[0]),
      ),
    );
    _marker.add(
      Marker(
        markerId: const MarkerId("destination"),
        position: destinationPoints[count],
        infoWindow: InfoWindow(title: startDestinationName[1]),
      ),
    );
    _marker.addAll(GetMarkerPoints(count));
  }

// ルート表示データ取得
  Future<void> _getRoutes(int count) async {
    _creatPolylines();
    List<LatLng> _points = [];
    _points = await _createPolyline(count);
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
      zoomControlsEnabled: false,
      initialCameraPosition: CameraPosition(
        target: start,
        zoom: 13,
      ),
      minMaxZoomPreference: MinMaxZoomPreference(11, 20),
    );

    if (moguleCount == 1) {
      Maps = GoogleMap(
        mapType: MapType.normal,
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(target: start, zoom: 13),
        zoomControlsEnabled: false,
        polylines: _polyline,
        markers: _marker,
        minMaxZoomPreference: MinMaxZoomPreference(11, 20),
      );
    }

    return Maps;
  }

  //ドロワーの作成
  Widget _createDrawer() {
    Widget drawers;

    drawers = Drawer(
      child: ListView(
        children: [
          SizedBox(
              height: 60,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.green.withOpacity(0.8)),
                child: const Text('路線を選んでね！'),
              )),
          ListTile(
            title: Text("10番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 1;
              moguleCount = 1;
              drawerCount = 1;
              startDestinationName = name.StartDestinationNameGet(count);
              _getRoutes(count);
              SetMarkerPoints(count);
              setState(() {});
            },
          ),
          ListTile(
            title: Text("18番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 2;
              moguleCount = 1;
              drawerCount = 1;
              startDestinationName = name.StartDestinationNameGet(count);
              _getRoutes(count);
              SetMarkerPoints(count);
              setState(() {});
            },
          ),
          ListTile(
            title: Text("19番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 3;
              moguleCount = 1;
              drawerCount = 1;
              startDestinationName = name.StartDestinationNameGet(count);
              _getRoutes(count);
              SetMarkerPoints(count);
              setState(() {});
            },
          ),
          ListTile(
            title: Text("21番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 4;
              moguleCount = 1;
              drawerCount = 1;
              startDestinationName = name.StartDestinationNameGet(count);
              _getRoutes(count);
              SetMarkerPoints(count);
              setState(() {});
            },
          ),
          ListTile(
            title: Text("31番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 5;
              moguleCount = 1;
              drawerCount = 1;
              startDestinationName = name.StartDestinationNameGet(count);
              _getRoutes(count);
              SetMarkerPoints(count);
              setState(() {});
            },
          ),
          ListTile(
            title: Text("34番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 6;
              moguleCount = 1;
              drawerCount = 1;
              startDestinationName = name.StartDestinationNameGet(count);
              _getRoutes(count);
              SetMarkerPoints(count);
              setState(() {});
            },
          ),
          ListTile(
            title: Text("35番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 7;
              moguleCount = 1;
              drawerCount = 1;
              startDestinationName = name.StartDestinationNameGet(count);
              _getRoutes(count);
              SetMarkerPoints(count);
              setState(() {});
            },
          ),
          ListTile(
            title: Text("45番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 8;
              moguleCount = 1;
              drawerCount = 1;
              startDestinationName = name.StartDestinationNameGet(count);
              _getRoutes(count);
              SetMarkerPoints(count);
              setState(() {});
            },
          ),
          ListTile(
            title: Text("46番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 9;
              moguleCount = 1;
              drawerCount = 1;
              startDestinationName = name.StartDestinationNameGet(count);
              _getRoutes(count);
              SetMarkerPoints(count);
              setState(() {});
            },
          ),
          ListTile(
            title: Text("78番線"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              count = 10;
              moguleCount = 1;
              drawerCount = 1;
              startDestinationName = name.StartDestinationNameGet(count);
              _getRoutes(count);
              SetMarkerPoints(count);
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
                  child: const Text('元のマップに戻る？'),
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
  Future<List<LatLng>> _createPolyline(int count) async {
    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      API_KYE,
      PointLatLng(startPoints[count].latitude, startPoints[count].longitude),
      PointLatLng(destinationPoints[count].latitude,
          destinationPoints[count].longitude),
      travelMode: TravelMode.walking,
      wayPoints: number.GetPolylinePoints(count),
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
