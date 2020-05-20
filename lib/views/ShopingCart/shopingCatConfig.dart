import 'package:flutter/material.dart';

class ShopingCatConfig {
  final String cnTitle;
  final String enTitle;
  final IconData icon;
  final String routerUrl;

  ShopingCatConfig({
    this.cnTitle,
    this.enTitle,
    this.icon,
    @required this.routerUrl
  });
}

List<ShopingCatConfig> shopingCatConfig = [
  ShopingCatConfig(
    cnTitle: '下拉刷新',
    enTitle: 'Refresh',
    icon: Icons.select_all,
    routerUrl: '/ShopingCart/ListRefresh'
  ),
];
