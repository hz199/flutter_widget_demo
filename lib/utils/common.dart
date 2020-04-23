import 'dart:math';
import 'package:flutter/material.dart';

class CommonUtils {
  /* 随机获取颜色 */
  static Color getRandomColor({int initNumber: 255}) {
    return Color.fromARGB(
        255,
        Random.secure().nextInt(initNumber),
        Random.secure().nextInt(initNumber),
        Random.secure().nextInt(initNumber));
  }
}
