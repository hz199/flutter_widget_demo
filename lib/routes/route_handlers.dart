import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
// import '../views/Home/index.dart';
import '../views/test_page1.dart';
import '../views/test_page2.dart';
import '../views/Main/index.dart';

// 分类
import '../views/Category/Button/index.dart';
import '../views/Category/Dialog/index.dart';
import '../views/Category/DatePicker/index.dart';
import '../views/Category/Form/index.dart';

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

// 分类
// 按钮
Handler categoryButtonHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return ButtonCategory();
  }
);

Handler categoryDialogHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return DialogCategory();
  }
);


Handler categoryDatePickerHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return DatePickerCategroy();
  }
);

Handler categoryFormHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return CategroyForm();
  }
);