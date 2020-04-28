import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './route_handlers.dart';

class Routes {
  static void configureRoutes (Router router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> pramas) {
        return Text('not found page');
      }
    );

    final TransitionType _transitionType = TransitionType.material;

    router.define('/', handler: homeHandle, transitionType: _transitionType);
    router.define('/testPage1', handler: testPage1Handle, transitionType: _transitionType);
    router.define('/testPage2', handler: testPage2Handle, transitionType: _transitionType);
    // router.define('/testPage2/:id', handler: testPage2Handle, transitionType: _transitionType);

    // 分类
    router.define('/category/button', handler: categoryButtonHandler, transitionType: _transitionType);
    router.define('/category/dialog', handler: categoryDialogHandler, transitionType: _transitionType);
    router.define('/category/datePicker', handler: categoryDatePickerHandler, transitionType: _transitionType);
    router.define('/category/form', handler: categoryFormHandler, transitionType: _transitionType);
  }
}