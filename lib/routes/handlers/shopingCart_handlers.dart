
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../views/ShopingCart/ListRefresh/index.dart';

Handler shopListRefreshPageHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return ListRefreshPage();
  }
);
