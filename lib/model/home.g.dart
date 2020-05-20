// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeSwiperModel _$homeFromJson(Map<String, dynamic> json) {
  return HomeSwiperModel(
    json['code'] as int,
    (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$homeToJson(HomeSwiperModel instance) => <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['imageUrl'] as String,
    json['county'] as String,
    json['timer'] as String,
    json['key'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'county': instance.county,
      'timer': instance.timer,
      'key': instance.key,
    };
