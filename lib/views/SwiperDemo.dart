import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterwidgetdemo/utils/flutter_screenutil.dart';

class SwiperDemo extends StatefulWidget {
  SwiperDemo({this.title});

  final String title;

  @override
  _SwiperDemo createState() => new _SwiperDemo();
}

class _SwiperDemo extends State<SwiperDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0,
        title: new Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        height: ScreenConfig.instance.setHeight(300),
        child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return new Image.network(
                "http://via.placeholder.com/350x150",
                fit: BoxFit.cover,
              );
            },
            itemCount: 3,
            pagination: SwiperPagination(),
            // control: new SwiperControl(),
            autoplay: true,
            duration: 1500),
      ),
    );
  }
}
