import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenConfig {
  static bool _isInit = false;
  static void setInit(BuildContext context) {
    if (!_isInit) {
      ScreenUtil.init(context, width: 750, height: 1334);
      _isInit = true;
    }
  }

  static ScreenUtil instance = ScreenUtil();
}
