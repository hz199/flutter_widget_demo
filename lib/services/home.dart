// import '../index.dart';
import 'dart:convert';
import '../model/home.dart';
import './dio.dart';
import 'dart:async';

class HomeServices {
  static Future<dynamic> fetchHomeSwiper() async {
    var respones = await HttpUtils.getInstance().get('/api/homeSwiper') as Map<String, dynamic>;

    return HomeSwiperModel.fromJson(respones);
  }
}
