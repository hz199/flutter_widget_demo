import 'package:flutter/material.dart';
// import '../../routes/router_fluro.dart';
// import './config.dart';
import '../../utils/flutter_screenutil.dart';
import './components/HomeListHorizontal.dart';
import './components/HomeSwiper.dart';
import './components/MusicStyle.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig.setInit(context);

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('首页'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
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
                      height: 10.0,
                    ),
                    Text(
                      'Basic components',
                      style: TextStyle(
                          fontSize: ScreenConfig.instance.setSp(40.0),
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    HomeListHorizontal(), // listView 横向排列
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Music style',
                      style: TextStyle(
                          fontSize: ScreenConfig.instance.setSp(40.0),
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    MusicStyle(),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1'),
                    Text('1')
                  ],
                ))
          ],
        ));
  }
}
