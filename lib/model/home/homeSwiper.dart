
import 'dart:convert';

HomeSwiperModel homeSwiperModelFromJson(String str) =>
    HomeSwiperModel.fromJson(json.decode(str));

String homeSwiperModelToJson(HomeSwiperModel data) =>
    json.encode(data.toJson());

class HomeSwiperModel {
  int code;
  Result result;

  HomeSwiperModel({
    this.code,
    this.result,
  });

  factory HomeSwiperModel.fromJson(Map<String, dynamic> json) =>
      HomeSwiperModel(
        code: json["code"],
        result: Result.fromJson(json["result:"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "result:": result.toJson(),
      };
}

class Result {
  List<SwiperList> swiperList;

  Result({
    this.swiperList,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        swiperList: List<SwiperList>.from(
            json["swiperList"].map((x) => SwiperList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "swiperList": List<dynamic>.from(swiperList.map((x) => x.toJson())),
      };
}

class SwiperList {
  String imageUrl;
  String county;
  DateTime timer;
  String key;

  SwiperList({
    this.imageUrl,
    this.county,
    this.timer,
    this.key,
  });

  factory SwiperList.fromJson(Map<String, dynamic> json) => SwiperList(
        imageUrl: json["imageUrl"],
        county: json["county"],
        timer: DateTime.parse(json["timer"]),
        key: json["key"],
      );

  Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
        "county": county,
        "timer": timer.toIso8601String(),
        "key": key,
      };
}
