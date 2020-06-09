
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../views/ShopingCart/partNavigator/index.dart';
import '../../views/ShopingCart/listRefresh/index.dart';
import '../../views/ShopingCart/pullUpLoad/index.dart';
import '../../views/ShopingCart/VerticalNav/index.dart';

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

Handler shopVerticalNavHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return VerticalNav();
  }
);

Handler shopPartNavigatorHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return PartNavigator();
  }
);