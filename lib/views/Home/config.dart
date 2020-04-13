import 'package:flutter/material.dart';

class HomeOptions {
  final String title;
  final String routerPath;
  final String subtitle;
  final Icon icon;
  final String imageUrl;

  HomeOptions(
      {this.title, this.routerPath, this.subtitle, this.icon, this.imageUrl});
}

List<HomeOptions> homeConfig = [
  HomeOptions(
      title: '测试1',
      routerPath: '/testPage1',
      subtitle: '测试1sub',
      icon: Icon(
        Icons.account_box,
        color: Colors.red,
      ),
      imageUrl: 'http://pic.closeeyes.cn/fengjing1.jpg'),
  HomeOptions(
      title: '测试2',
      routerPath: '/testPage2',
      subtitle: '测试1sub',
      icon: Icon(
        Icons.account_box,
        color: Colors.yellow,
      ),
      imageUrl: 'http://pic.closeeyes.cn/fengjing2.jpg'),
  HomeOptions(
      title: '测试3',
      routerPath: '/testPage2',
      subtitle: '测试1sub',
      icon: Icon(
        Icons.account_box,
        color: Colors.orange
      ),
      imageUrl: 'http://pic.closeeyes.cn/fengjing3.jpg')
];
