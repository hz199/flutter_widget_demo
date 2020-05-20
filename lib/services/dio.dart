import 'package:dio/dio.dart';
// import 'dart:async';

class HttpUtils {
  /// global dio object
  static Dio dio;

  /// default options
  static const String API_PREFIX =
      'https://www.fastmock.site/mock/94d307b4946b894d53c8e5ec27b5303d/';

  static Dio getInstance() {
    if (dio == null) {
      BaseOptions options = BaseOptions(
          baseUrl: API_PREFIX,
          connectTimeout: 5000,
          receiveTimeout: 3000,
      );

      dio = new Dio(options);

      dio.interceptors
          .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
        // 在请求被发送之前做一些事情
        // 添加loading
        return options;
      }, onResponse: (Response response) async {
        // 在返回响应数据之前做一些预处理
        return response;
      }, onError: (DioError e) async {
        // 当请求失败时做一些预处理
        return e;
      }));
    }
    return dio;
  }
}
