import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
// import '../views/Home/index.dart';
import '../views/test_page1.dart';
import '../views/test_page2.dart';
import '../views/Main/index.dart';

export './handlers/category_handlers.dart';
export './handlers/shopingCart_handlers.dart';


Handler homeHandle = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        MyTestPage());

Handler testPage1Handle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String index = params['index'].first;
  return TestPage1(index);
});

Handler testPage2Handle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String goodsId = params['index'].first;
  return TestPage2(id: goodsId, title: '测试title',);
});
