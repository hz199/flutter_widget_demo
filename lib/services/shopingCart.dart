
import 'dart:convert';
import 'dart:async';
import './dio.dart';

import '../model/shopingCart/refreshModel.dart';

class ShopingCartServices {
  static Future<RefreshModel> fetchRefreshData() async {
    var respones = await HttpUtils.getInstance().get('/api/refresh');

    return RefreshModel.fromJson(json.decode(respones.toString()));
  }
}
