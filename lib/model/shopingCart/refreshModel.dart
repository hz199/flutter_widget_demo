// To parse this JSON data, do
//
//     final refreshModel = refreshModelFromJson(jsonString);

import 'dart:convert';

RefreshModel refreshModelFromJson(String str) =>
    RefreshModel.fromJson(json.decode(str));

String refreshModelToJson(RefreshModel data) => json.encode(data.toJson());

class RefreshModel {
  int code;
  List<ResultModel> result;

  RefreshModel({
    this.code,
    this.result,
  });

  factory RefreshModel.fromJson(Map<String, dynamic> json) => RefreshModel(
        code: json["code"],
        result:
            List<ResultModel>.from(json["result:"].map((x) => ResultModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "result:": List<dynamic>.from(result.map((x) => x.toJson())),
      };
}

class ResultModel {
  String imageUrl;
  String county;
  DateTime timer;
  String key;

  ResultModel({
    this.imageUrl,
    this.county,
    this.timer,
    this.key,
  });

  factory ResultModel.fromJson(Map<String, dynamic> json) => ResultModel(
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
