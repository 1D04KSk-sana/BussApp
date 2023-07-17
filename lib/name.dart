import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class Name {
  List<String> StartDestinationNameGet(int count) {
    List<String> startDestinationName = [];

    if (count == 1) {
      //10
      startDestinationName = ["守口車庫前", "天満橋"];
    }
    if (count == 2) {
      //18
      startDestinationName = ["玉造", "北巽バスターミナル"];
    }
    if (count == 3) {
      //19
      startDestinationName = ["地下鉄今里", "加美東三丁目北"];
    }
    if (count == 4) {
      //21
      startDestinationName = ["天満橋", "地下鉄深江橋"];
    }
    if (count == 5) {
      //31
      startDestinationName = ["天満橋", "花博記念公園北口"];
    }
    if (count == 6) {
      //34
      startDestinationName = ["守口車庫前", "大阪駅前"];
    }
    if (count == 7) {
      //35
      startDestinationName = ["守口車庫前", "杭全"];
    }
    if (count == 8) {
      //45
      startDestinationName = ["総合医療センター前", "諸口"];
    }
    if (count == 9) {
      //46
      startDestinationName = ["天満橋", "焼野"];
    }
    if (count == 10) {
      //78
      startDestinationName = ["守口車庫前", "大阪駅前"];
    }

    return startDestinationName;
  }
}
