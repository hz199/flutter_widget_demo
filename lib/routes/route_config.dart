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

    router.define('/', handler: homeHandle);
    router.define('/testPage1', handler: testPage1Handle, transitionType: TransitionType.inFromBottom);
    router.define('/testPage2/:id', handler: testPage2Handle, transitionType: TransitionType.inFromLeft);
  }
}