import 'package:json_annotation/json_annotation.dart'; 
  
part 'home.g.dart';


@JsonSerializable()
  class HomeSwiperModel extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'data')
  List<Data> data;

  HomeSwiperModel(this.code,this.data,);

  factory HomeSwiperModel.fromJson(Map<String, dynamic> srcJson) => _$homeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$homeToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'imageUrl')
  String imageUrl;

  @JsonKey(name: 'county')
  String county;

  @JsonKey(name: 'timer')
  String timer;

  @JsonKey(name: 'key')
  String key;

  Data(this.imageUrl,this.county,this.timer,this.key,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}
