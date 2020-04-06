import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../views/home.dart';
import '../views/test_page1.dart';
import '../views/test_page2.dart';

Handler homeHandle = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) => HomePage()
);

Handler testPage1Handle = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      String goodsId = params['id'].first;
      return TestPage1(goodsId);
    }
);

Handler testPage2Handle = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    String goodsId = params['id'].first;
    return TestPage2(goodsId);
  }
);
