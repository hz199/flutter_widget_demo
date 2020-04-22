import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class RouterFluro {
  static Router router;

  static void goBack(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode());
    Navigator.pop(context);
  }
}

// RouterFluro.router.navigateTo(context, '${_currentHomeConfig.routerPath}?index=$index');