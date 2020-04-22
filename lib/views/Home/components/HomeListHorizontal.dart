import 'package:flutter/material.dart';
import '../../../utils/flutter_screenutil.dart';
import '../config.dart';

class HomeListHorizontal extends StatelessWidget {
  const HomeListHorizontal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenConfig.instance.setWidth(300),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: _homeItemBuilder,
          itemCount: homeSwiperImages.length),
    );
  }

  Widget _homeItemBuilder(BuildContext context, int index) {
    final SwiperImage _swiperImageItem = homeSwiperImages[index];

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: _setMargin(index),
            width: ScreenConfig.instance.setWidth(200),
            height: ScreenConfig.instance.setWidth(220),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(_swiperImageItem.imageUrl),
                  fit: BoxFit.cover,
                )),
            // child: Text('哈哈哈'),
          ),
          Container(
            width: ScreenConfig.instance.setWidth(200),
            margin: index == 0 ? null : EdgeInsets.only(left: 10.0),
            child: Text(
              '描述文字',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: ScreenConfig.instance.setSp(18.0)),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          )
        ]);
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
