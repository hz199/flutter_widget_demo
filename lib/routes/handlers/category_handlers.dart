
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
// 分类
import '../../views/Category/Button/index.dart';
import '../../views/Category/Dialog/index.dart';
import '../../views/Category/DatePicker/index.dart';
import '../../views/Category/Form/index.dart';
import '../../views/Category/ScrollView/index.dart';
import '../../views/Category/BaseComp/index.dart';

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

Handler categoryNestedScrollViewHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return NestedScrollViewDemo();
  }
);

Handler categoryBaseCompHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return BaseCompPage();
  }
);