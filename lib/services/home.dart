// import '../index.dart';
import 'dart:convert';
import '../model/home/homeSwiper.dart';
import './dio.dart';
import 'dart:async';

class HomeServices {
  static Future<HomeSwiperModel> fetchHomeSwiper() async {
    var respones = await HttpUtils.getInstance().get('/api/homeSwiper');

    return HomeSwiperModel.fromJson(json.decode(respones.toString()));
  }
}
