import 'package:flutter/material.dart';
// import '../../routes/router_fluro.dart';
// import './config.dart';
import '../../utils/flutter_screenutil.dart';
import 'HomeListHorizontal.dart';
import 'HomeSwiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig.setInit(context);

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('首页'),
        ),
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 5.0,
                ),
                HomeSwiper(),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  '基础组件',
                  style: TextStyle(
                      fontSize: ScreenConfig.instance.setSp(50.0),
                      fontWeight: FontWeight.bold),
                ),
                HomeListHorizontal(),
              ],
            )));
  }
}
