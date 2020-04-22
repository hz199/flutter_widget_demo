// import 'package:flutter/material.dart';
// 轮播图图片

class SwiperImage {
  final String imageUrl;
  final String textStr;
  SwiperImage({this.imageUrl, this.textStr});
}

List<SwiperImage> homeSwiperImages = [
  SwiperImage(
      imageUrl: 'http://study.closeeyes.cn/lol_0.jpg', textStr: '这是一个英雄'),
  SwiperImage(imageUrl: 'http://study.closeeyes.cn/lol_1.jpg', textStr: '易大师'),
  SwiperImage(imageUrl: 'http://study.closeeyes.cn/lol_2.jpg', textStr: '托儿所'),
  SwiperImage(imageUrl: 'http://study.closeeyes.cn/lol_3.jpg', textStr: '剑姬'),
  SwiperImage(
      imageUrl: 'http://study.closeeyes.cn/lol_4.jpg', textStr: '这是一个英雄'),
  SwiperImage(
      imageUrl: 'http://study.closeeyes.cn/lol_5.jpg', textStr: '这是一个英雄'),
  SwiperImage(
      imageUrl: 'http://study.closeeyes.cn/lol_6.jpg', textStr: '这是一个英雄')
];
