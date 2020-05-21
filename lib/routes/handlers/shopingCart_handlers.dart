
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../views/ShopingCart/listRefresh/index.dart';
import '../../views/ShopingCart/pullUpLoad/index.dart';

Handler shopListRefreshPageHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return ListRefreshPage();
  }
);

Handler shopPullUpLoadMoreHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return PullUpLoadMore();
  }
);