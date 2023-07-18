import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class Name {
  List<String> startDestinationName = [];

  void _NameClear() {
    startDestinationName.clear();
  }

  List<String> StartDestinationNameGet(int count) {
    _NameClear();
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

  List<String> MarkersName10() {
    final Names10 = [
      //0
      "地下鉄太子橋今市（西）",
      //1
      "今市",
      //2
      "大宮小学校前",
      //3
      "中宮",
      //4
      "城北公園前",
      //5
      "生江",
      //6
      "赤川三丁目",
      //7
      "赤川一丁目（北）",
      //8
      "赤川一丁目（南）",
      //9
      "高座町三丁目",
      //10
      "高座町二丁目",
      //11
      "高座町一丁目",
      //12
      "地下鉄都島（都島工業高校前）",
      //13
      "地下鉄都島（南）",
      //14
      "都島中通",
      //15
      "都島区役所前",
      //16
      "東野田",
      //17
      "片町（北）",
      //18
      "片町（西）",
      //19
      "京阪東口",
    ];
    return Names10;
  }
}
