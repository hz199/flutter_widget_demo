import 'package:flutter/material.dart';
import 'dart:math';
import '../../../utils/flutter_screenutil.dart';

class MusicStyle extends StatelessWidget {
  const MusicStyle();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenConfig.instance.setHeight(120),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: _musicStyleItemBuilder,
          itemCount: 8),
    );
  }

  Color _getRandomColor() {
    return Color.fromARGB(255, Random.secure().nextInt(255),
        Random.secure().nextInt(255), Random.secure().nextInt(255));
  }

  Widget _musicStyleItemBuilder(BuildContext context, int index) {
    return Container(
      width: ScreenConfig.instance.setWidth(200),
      height: ScreenConfig.instance.setHeight(120),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          gradient: LinearGradient(
            colors: [_getRandomColor(), _getRandomColor()],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      margin: _setMargin(index),
      child: Center(
        child: Text(
          'Music',
          style: TextStyle(
              color: Colors.white,
              fontSize: ScreenConfig.instance.setSp(30.0),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  EdgeInsetsGeometry _setMargin(int index) {
    if (index == 0) {
      return EdgeInsets.only(left: 0, top: 10.0, right: 10.0, bottom: 10.0);
    } else if (index == 7) {
      return EdgeInsets.only(left: 10.0, top: 10.0, right: 0, bottom: 10.0);
    } else {
      return EdgeInsets.all(10.0);
    }
  }
}
